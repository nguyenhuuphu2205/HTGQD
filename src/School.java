
import java.util.ArrayList;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author trananh bacninh
 */
public class School {
    private String name;
    private int id;
    private String decription;
    private double cost;
    private int top;
    private String location;
    private ArrayList<DiemSan> listDiemSan;

    public ArrayList<DiemSan> getListDiemSan() {
        return listDiemSan;
    }

    public void setListDiemSan(ArrayList<DiemSan> listDiemChuan) {
        this.listDiemSan = listDiemChuan;
    }
    public String print(){
        String temp="id:"+this.getId()+" Name:"+this.getName()+" Decription:"+this.getDecription()+" Cost:"+this.getCost()+" Top:"+this.getTop()+"   Location:"+this.getLocation();
        for(int i=0;i<this.getListDiemSan().size();i++){
            temp+=" Khoi:"+this.getListDiemSan().get(i).getKhoi()+" Diem:"+this.getListDiemSan().get(i).getDiem();
        }
        return temp;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getTop() {
        return top;
    }

    public void setTop(int top) {
        this.top = top;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
}
 class DiemSan{
        private String khoi;
        private double diem;
        public DiemSan(){
            
        }

        public String getKhoi() {
            return khoi;
        }

        public void setKhoi(String khoi) {
            this.khoi = khoi;
        }

        public double getDiem() {
            return diem;
        }

        public void setDiem(double diem) {
            this.diem = diem;
        }
        public DiemSan(String khoi,double diem){
            this.khoi=khoi;
            this.diem=diem;
        }
    }
