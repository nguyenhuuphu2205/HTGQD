
import static java.lang.Math.abs;
import static java.lang.Math.pow;
import static java.lang.Math.sqrt;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *Class xử lý thuật toán core TOPSIS
 * @author trananh bacninh
 */
public class Core {
    private ArrayList<School> listSchool;
    private HocSinh hocSinh;
    private ArrayList<Object[]> tableTopSiS;
    private ArrayList<Object[]> listDiaDiem;
    private double[] listTrongSo={0.3,0.1,0.05,0.35,0.15,0.05};
    Database db;
    //Tính điểm cộng của khu vực ưu tiên
    public Core(HocSinh hs){
        db=new Database();
        this.listSchool=db.getListSchool();
        this.hocSinh=hs;
        this.tableTopSiS=new ArrayList();
        this.listDiaDiem=db.getAllAddress();
        
    }
    public double diemKhuVucUuTien(String khuvuc){
        double diem=0;
        switch (khuvuc){
            case "KV1":
                diem=1.5;
                break;
            case "KV2 NT":
                diem=1;
                break;
            case "KV2":
                diem=0.5;
                break;
            case "KV3":
                diem=0;
                break;
        }
        
        return diem;
                
    }
    //Tính điểm cộng của khu vực ưu tiên đặc biệt
    public double diemKhuVucDacBiet(String khuvuc){
        double diem=0;
        switch(khuvuc){
            case "Không":
                diem=0;
                break;
            case "Gia đình quân đội":
                diem=1;
                break;
            case "Gia đình thương binh liệt sĩ":
                diem=2;
                break;
            case "Cả hai":
                diem=3;
                break;
        }
        return diem;
    }
    //Hàm tính điểm sàn của trường
    public double getDiemSan(School school,String khoiThi){
        double diemSan=35;
        for(int i=0;i<school.getListDiemSan().size();i++){
            if(school.getListDiemSan().get(i).getKhoi().equals(khoiThi)){
                diemSan=school.getListDiemSan().get(i).getDiem();
            }
        }
        return diemSan;
    }
    //Tính giá trị điền vào bảng TopSis cột Điểm lớp 12
    public double tinhDiemLop12(HocSinh hocSinh,double diemsan){
        double diemTong=0;
        for(int i=0;i<hocSinh.getListDiemTongKet12().size();i++){
            diemTong+=hocSinh.getListDiemTongKet12().get(i);
        }
        double temp=diemTong-diemsan;
        if(temp>5.0){
            temp=temp*0.1;
        }else{
            if(temp>3.0){
                temp=temp*0.3;
            }
        }
        
        return temp;
    }
    //Tính giá trị để điền vào bảng Topsis cột Điểm Thi thử
    public double tinhDiemThiThu(HocSinh hocSinh,double diemsan){
        double diemTong=0;
        for(int i=0;i<hocSinh.getListDiemThiThu().size();i++){
            diemTong+=hocSinh.getListDiemThiThu().get(i);
        }
        double diemCong=this.diemKhuVucUuTien(hocSinh.getKhuVucUuTien())+this.diemKhuVucDacBiet(hocSinh.getUuTienDacBiet());
        double temp=diemTong+diemCong-diemsan;
        if(temp>5.0){
            temp=temp*0.1;
        }else{
            if(temp>3.0){
                temp=temp*0.3;
            }
        }
        return temp;
    }
    //Tính giá trị để điền vào bảng Topsis cột khả năng tài chính
    public double tinhKhaNangTaiChinh(String khaNangTaiChinh,int idTruong){
        //số tiền có thể đáp ứng tương ứng với khả năng tài chính
        double money=0;
        switch(khaNangTaiChinh){
            case "Thấp":
                money=150000;
                break;
            case "Trung Bình":
                money=200000;
                break;
            case "Cao":
                money=300000;
                break;
            
        }
        // Lấy số tiền 1 tín chỉ của trường từ trong database bảng trường
       
        double moneySchool=0;
        //double moneySchool=db.getMoneySchool(idTruong);
        for(int i=0;i<this.listSchool.size();i++){
            if(this.listSchool.get(i).getId()==idTruong){
                moneySchool=this.listSchool.get(i).getCost();
            }
        }
        return money-moneySchool;
        
    }
    //Hàm tính giá trị để điền vào bảng Topsis cột địa điểm
    public double distance(String thanhPho){
        //Database db=new Database();
        int khoangcach=0;
        for(int i=0;i<this.listDiaDiem.size();i++){
            if(thanhPho.equals(this.listDiaDiem.get(i)[0])){
                khoangcach=(int)this.listDiaDiem.get(i)[1];
            }
        }
        return 1.0/khoangcach;
    }
    //Hàm tính giá trị để điền vào bảng TopSis cột sở thích
    public double soThich(int idTruong,String soThich){
        //Database db=new Database();
        return db.getTrongSoSoThich(idTruong, soThich);
    }
    public double gioiTinh(int idTruong,String gioiTinh){
        //Database db=new Database();
        return db.getTrongSoGioiTinh(idTruong, gioiTinh);
    }
    ///Tạo bảng TopSiS
    //Bảng gồm các trường : id, sở thích , giới tính, điểm lớp 12, điểm thi thử, khả năng tài chính,địa chỉ
    //-------------------------------------------------------//
    public void createTableTopSiS(){
        for (int i=0;i<this.listSchool.size();i++){
            School school=this.listSchool.get(i);
            
            int id=school.getId();
            double sothich=this.soThich(id,this.hocSinh.getSoThich());
            double gioitinh=this.gioiTinh(id,this.hocSinh.getGioiTinh());
            double diemSan=this.getDiemSan(school,this.hocSinh.getKhoiThi());
            double diemlop12=this.tinhDiemLop12(this.hocSinh,diemSan);
            double diemthithu=this.tinhDiemThiThu(hocSinh,diemSan);
            double khanangtaichinh=this.tinhKhaNangTaiChinh(this.hocSinh.getKhaNangTaiChinh(),id);
            double diachi=this.distance(this.hocSinh.getDiaDiem());
            Object[] obj={id,sothich,gioitinh,diemlop12,diemthithu,khanangtaichinh,diachi};
            System.out.print(id+","+sothich+","+gioitinh+","+diemlop12+","+diemthithu+","+khanangtaichinh+","+diachi);
            System.out.println("\n");
            this.tableTopSiS.add(obj);
        }
    }
    //Chuẩn hóa các giá trị của bảng TopSis về khoảng 0-1
    //Sử dụng phương pháp chuẩn hóa bằng việc chia cho giá trị lớn nhất.
    
    
    //Hàm tìm giá trị lớn nhất cho 1 mảng Object
    public double[] findMax(){
        double max1=-99999;
        double max2=-99999;
        double max3=-99999;
        double max4=-99999;
        double max5=-99999;
        double max6=-99999;
        
        for(int i=0;i<this.tableTopSiS.size();i++){
            Object []row =this.tableTopSiS.get(i);
            if(abs((double)row[1])>max1){
                max1=abs((double)row[1]);
            }
            if(abs((double)row[2])>max2){
                max2=abs((double)row[2]);
            }
            if(abs((double)row[3])>max3){
                max3=abs((double)row[3]);
            }
            if(abs((double)row[4])>max4){
                max4=abs((double)row[4]);
            }
            if(abs((double)row[5])>max5){
                max5=abs((double)row[5]);
            }
            if(abs((double)row[6])>max6){
                max6=abs((double)row[6]);
            }
            if(max1==0)
                max1=1;
            if(max2==0)
                max2=1;
            if(max3==0)
                max3=1;
            if(max4==0)
                max4=1;
            if(max5==0)
                max5=1;
            if(max6==0)
                max6=1;
            
        }
        
        double[]listMax={max1,max2,max3,max4,max5,max6};
        
        System.out.println("ListMax:");
        for(int i=0;i<listMax.length;i++){
            System.out.print(" ,"+listMax[i]);
        }
        return listMax;
    }
    //Hàm chia tất cả các giá trị của 1 mảng cho giá trị lớn nhất và nhân trọng số
    public Object[] divArray(Object[] obj){
        double[] listMax=this.findMax();
        
        Object[]newObj =new Object[obj.length];
        newObj[0]=obj[0];
        for(int i=1;i<obj.length;i++){
                
                newObj[i]=(double)((((double)obj[i])/listMax[i-1])*this.listTrongSo[i-1]);
                
        }
        return newObj;
    }
    //Hàm chuẩn hóa các giá trị của bảng TopSis và nhân trọng số cho các thuộc tính
    public void chuanHoa(){
        ArrayList<Object[]>temp=new ArrayList();
        for(int i=0;i<this.tableTopSiS.size();i++){
            temp.add(this.divArray(this.tableTopSiS.get(i).clone()));
        }
        this.tableTopSiS=(ArrayList<Object[]>)temp.clone();
        System.out.println("Bảng top sis đã chuaant hóa");  
        for(int i=0;i<this.tableTopSiS.size();i++){
            
            Object[] obj=this.tableTopSiS.get(i);
           for(int k=0;k<obj.length;k++){
               System.out.print(obj[k]+",");
           }
            System.out.println("\n");
        }
    }
    
    
    //Tìm phương án lý tưởng tốt, phương án lý tưởng xấu.
    //--------------------------------------------------//
    
    //Hàm tính phương án lý tưởng tốt
    public Object[] lyTuongTot(){
        double max1=0;
        double max2=0;
        double max3=0;
        double max4=0;
        double max5=0;
        double max6=0;
        for(int i=0;i<this.tableTopSiS.size();i++){
            Object[] obj=this.tableTopSiS.get(i);
            if(((double)obj[1])>max1){
                max1=(double)obj[1];
                
            }
            if(((double)obj[2])>max2){
                max2=(double)obj[2];
                
            }
            if(((double)obj[3])>max3){
                max3=(double)obj[3];
                
            }
            if(((double)obj[4])>max4){
                max4=(double)obj[4];
                
            }
            if(((double)obj[5])>max5){
                max5=(double)obj[5];
                
            }
            if(((double)obj[6])>max6){
                max6=(double)obj[6];
                
            }
            
            
        }
        Object[] tmp={"A*",max1,max2,max3,max4,max5,max6};
        return tmp;
        
    }
    //Hàm tìm phương án lý tưởng xấu.
    public Object[] lyTuongXau(){
        double min1=0;
        double min2=0;
        double min3=0;
        double min4=0;
        double min5=0;
        double min6=0;
        for(int i=0;i<this.tableTopSiS.size();i++){
            Object[] obj=this.tableTopSiS.get(i);
            if(((double)obj[1])<min1){
                min1=(double)obj[1];
                
            }
            if(((double)obj[2])<min2){
                min2=(double)obj[2];
                
            }
            if(((double)obj[3])<min3){
                min3=(double)obj[3];
                
            }
            if(((double)obj[4])<min4){
                min4=(double)obj[4];
                
            }
            if(((double)obj[5])<min5){
                min5=(double)obj[5];
                
            }
            if(((double)obj[6])<min6){
                min6=(double)obj[6];
                
            }
            
            
        }
        Object[] tmp={"A-",min1,min2,min3,min4,min5,min6};
        return tmp;
    }
    //Tính khoảng cách tới phương án lý tưởng tốt, xấu//
    //-------------------------------------------------//
    
    //Hàm tính khoảng cách tới phương án lý tưởng tốt
    //--Áp dụng khoảng cách Euclid--//
    public ArrayList<Double> khoangCachDenPhuongAnLyTuongToT(){
        Object[] lyTuongTot=this.lyTuongTot();
        ArrayList<Double> temp=new ArrayList();
        for(int i=0;i<this.tableTopSiS.size();i++){
            Object[] row=this.tableTopSiS.get(i);
            double ketqua=0;
            for(int j=1;j<row.length;j++){
               double temp1=(double)row[j]-(double)lyTuongTot[j];
               ketqua+=pow(temp1,2);
            }
            temp.add(sqrt(ketqua));
            
        }
        return temp;
        
    }
    //Tính khoảng cách tới phương án lý tưởng tốt, xấu//
    //-------------------------------------------------//
    
    //Hàm tính khoảng cách tới phương án lý tưởng tốt
    //--Áp dụng khoảng cách Euclid--//
    public ArrayList<Double> khoangCachDenPhuongAnLyTuongXau(){
        Object[] lyTuongXau=this.lyTuongXau();
        ArrayList<Double> temp=new ArrayList();
        for(int i=0;i<this.tableTopSiS.size();i++){
            Object[] row=this.tableTopSiS.get(i);
            double ketqua=0;
            for(int j=1;j<row.length;j++){
               double temp1=(double)row[j]-(double)lyTuongXau[j];
               ketqua+=pow(temp1,2);
            }
            temp.add(new Double(sqrt(ketqua)));
            
        }
        return temp;
        
    }
    //Tính độ đo tương tự C*
    //--------------------------------------------//
    public ArrayList<Double> tinhDoDoTuongTu(){
        ArrayList<Double> doDo=new ArrayList();
        ArrayList<Double> lyTuongTot=this.khoangCachDenPhuongAnLyTuongToT();
        ArrayList<Double> lyTuongXau=this.khoangCachDenPhuongAnLyTuongXau();
        for(int i=0;i<lyTuongXau.size();i++){
            double tong=Double.valueOf(lyTuongXau.get(i))+Double.valueOf(lyTuongTot.get(i));
            double ketqua=Double.valueOf(lyTuongXau.get(i))/tong;
            doDo.add(new Double(ketqua));
        }
        return doDo;
    }
    //Hàm trả trường đại học có độ đo C* tốt nhât
    public School truongLyTuongNhat(){
        ArrayList<Double>doDoTuongTu=this.tinhDoDoTuongTu();
        double max=0;
        int index=-1;
        for(int i=0;i<doDoTuongTu.size();i++){
            double doDo=Double.valueOf(doDoTuongTu.get(i));
            if(doDo>max){
                max=doDo;
                index=i;
            }
        }
        //Lấy id trường phù hợp
        int idTruong= (int)this.tableTopSiS.get(index)[0];
        School school=new School();
        for(int i=0;i<this.listSchool.size();i++){
            if(this.listSchool.get(i).getId()==idTruong){
                school=this.listSchool.get(i);
            }
        }
        return school;
    }
    //Hàm lấy 3 trường đại học có độ đo C* lớn nhất sắp xếp theo thứ tự giảm dần
    public ArrayList<School> baTruongLyTuongNhat(){
        ArrayList<School> list=new ArrayList();
        ArrayList<Double>doDoTuongTu=this.tinhDoDoTuongTu();
        ArrayList<Integer> listIndex=new ArrayList();
        for(int i=0;i<doDoTuongTu.size();i++){
            listIndex.add(new Integer(i));
        }
        for (int i=0;i<doDoTuongTu.size()-1;i++){
            for(int j=i+1;j<doDoTuongTu.size();j++){
                double i1=Double.valueOf(doDoTuongTu.get(i));
                double j1=Double.valueOf(doDoTuongTu.get(j));
                if(i1<j1){
                    Double temp=doDoTuongTu.get(i);
                    doDoTuongTu.set(i, doDoTuongTu.get(j));
                    doDoTuongTu.set(j, temp);
                    Integer tmp=listIndex.get(i);
                    listIndex.set(i,listIndex.get(j));
                    listIndex.set(j,tmp);
                }
            }
        }
        int idTruong1=(int)this.tableTopSiS.get(listIndex.get(0).intValue())[0];
        int idTruong2=(int)this.tableTopSiS.get(listIndex.get(1).intValue())[0];
        int idTruong3=(int)this.tableTopSiS.get(listIndex.get(2).intValue())[0];
        for(int i=0;i<this.listSchool.size();i++){
            if(this.listSchool.get(i).getId()==idTruong1){
                list.add(this.listSchool.get(i));
            }
        }
        for(int i=0;i<this.listSchool.size();i++){
            if(this.listSchool.get(i).getId()==idTruong2){
                list.add(this.listSchool.get(i));
            }
        }
        for(int i=0;i<this.listSchool.size();i++){
            if(this.listSchool.get(i).getId()==idTruong3){
                list.add(this.listSchool.get(i));
            }
        }
        return list;
        
    }
    public ArrayList<School> start(){
        this.createTableTopSiS();
        this.chuanHoa();
        //this.db.stop();
        this.db.interrupt();
        return this.baTruongLyTuongNhat();
    }
}
