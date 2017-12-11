
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author trananh bacninh
 */
public class Database extends Thread {
    private String databaseName="htgqd";
    private String user="root";
    private String password="12345678";
    private String table1="truong";
    private String table2="diemsan";
    private String table3="distance";
    private String table4="sothich";
    private String table5="gioitinh";
    private String table6="trongso_gioitinh";
    private String table7="trongso_sothich";
    private Statement stmt;
    //Hàm tạo 1 kết nối Connection thực thi mệnh đề select
    //return ResulSet
    public Database(){
        this.stmt=this.execQueryOtimize();
    }
    public Statement execQueryOtimize(){
        Statement stmt=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/"+this.databaseName,this.user,this.password);
             stmt = (Statement) connection.createStatement();
            //Statement stmt1=(Statement) connection.createStatement();
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return stmt;
    }
    public ResultSet execQuery(String query){
        ResultSet rs=null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/"+this.databaseName,this.user,this.password);
            Statement stmt = (Statement) connection.createStatement();
            //Statement stmt1=(Statement) connection.createStatement();
            rs = stmt.executeQuery(query);
           
        }catch (Exception e){
            e.printStackTrace();
        }
        
        return rs;
    }
   //Lấy danh sách các sở thích từ datbase
    public ArrayList<String> layDanhSachSoThich(){
        ArrayList<String> dsSoThich=new ArrayList();
        
        String sql="select ten from "+this.table4;
        
        
        try{
            ResultSet rs=this.stmt.executeQuery(sql);
            while(rs.next()){
                dsSoThich.add(rs.getString(1));
            }
         rs.close();
        }catch(Exception e){
            e.printStackTrace();
        }
       
        return dsSoThich;
    }
    //Hàm lấy danh sách các trường từ database
    public ArrayList<School> getListSchool(){
        ArrayList<School> list=new ArrayList();
        try{
            
            ResultSet rs = this.stmt.executeQuery("select * from "+this.table1);
            while(rs.next()){
                School school=new School();
                ArrayList<DiemSan> listDiemSan=new ArrayList();
                school.setId(rs.getInt(1));
                school.setName(rs.getString(2));
                school.setDecription(rs.getString(3));
                school.setCost(rs.getInt(4));
                school.setTop(rs.getInt(5));
                school.setLocation(rs.getString(6));
                ResultSet rsDiemSan=this.execQuery("select * from "+this.table2+" where truong_id="+school.getId());
                while(rsDiemSan.next()){
                    DiemSan diemSan=new DiemSan();
                    diemSan.setKhoi(rsDiemSan.getString(3));
                    diemSan.setDiem(rsDiemSan.getDouble(4));
                    listDiemSan.add(diemSan);
                }
                rsDiemSan.close();
                
                school.setListDiemSan(listDiemSan);
                
                        
                 
                list.add(school);
            }
            rs.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    //Hàm lấy số tiền học phí của 1 trường từ database
   public double getMoneySchool(int idTruong){
       double money=0;
       try{
            
            ResultSet rs = this.stmt.executeQuery("select hocPhi from "+this.table1+" where id="+idTruong);
            while(rs.next()){
               money=rs.getDouble(1);
            }
             rs.close();
             
       }catch(Exception e){
           e.printStackTrace();
       }
       return money;
   }
   //Hàm lấy toàn bộ danh sách các tỉnh thành phố và khoảng cách từ thành phố đến Hà Nội.
   public ArrayList<Object[]> getAllAddress(){
       ArrayList<Object[]> list=new ArrayList();
       String sql="select * from distance";
       try{
       ResultSet rs=this.stmt.executeQuery(sql);
       while(rs.next()){
           Object[] obj={rs.getString(1),rs.getInt(2)};
           list.add(obj);
       }
       rs.close();
       }catch(SQLException e){
           e.printStackTrace();
       }
       return list;
   }
   //Hàm lấy khoảng cách từ các tỉnh thành đến Hà Nội
   public double getDistance(String thanhPho){
       double khoangcach=0;
       String sql="select distance from distance where thanhpho=\""+thanhPho+"\"";
       
       try{
           ResultSet rs=this.stmt.executeQuery(sql);
           while(rs.next()){
               khoangcach=rs.getDouble(1);
               
           }
            rs.close();
           
       
       }catch(Exception e){
           e.printStackTrace();
   }
       return khoangcach;
   }
   //Hàm lấy tên của các tỉnh
   public String[] getListNameCity(){
       String query="select thanhpho from "+this.table3;
       ResultSet rs=this.execQuery(query);
       ArrayList<String>list=new ArrayList();
       try{
       while(rs.next()){
           list.add(rs.getString(1));
       }
        rs.close();
       }catch(SQLException e){
           e.printStackTrace();
       }
       String[]temp=new String[list.size()];
       for(int i=0;i<list.size();i++){
           temp[i]=list.get(i);
       }
       return temp;
       
   }
   //Hàm lấy giá trị trọng số sở thích trong database
   public double getTrongSoSoThich(int idTruong,String soThich){
       double trongso=0;
       String sql="select trongso from htgqd.sothich,htgqd.trongso_sothich where sothich.id=trongso_sothich.id_sothich and id_truong="+idTruong+" and ten=\""+soThich+"\"";
       
       
       try{
           ResultSet rs=this.stmt.executeQuery(sql);
           while(rs.next()){
               trongso=rs.getDouble(1);
           }
            rs.close();
       }catch(Exception e){
           e.printStackTrace();
       }
       return trongso;
   }
   //Hàm lấy giá trị trọng số giới tính từ datbase
   public double getTrongSoGioiTinh(int idTruong,String gioiTinh){
       double trongso=0;
       String sql="select trongso from trongso_gioitinh,gioitinh where gioitinh.id=trongso_gioitinh.id_gioitinh and id_truong="+idTruong+" and gioitinh.ten=\""+gioiTinh+"\"";
       
       try{
           ResultSet rs=this.stmt.executeQuery(sql);
           while(rs.next()){
               trongso=rs.getDouble(1);
           }
            rs.close();
       }catch(Exception e){
           e.printStackTrace();
       }
       return trongso;
   }
   
   
   
    public static void main(String[] args) {
        Database db=new Database();
        System.out.println(db.getTrongSoSoThich(1,"Khoa Hoc Cong Nghe"));
    }
}
