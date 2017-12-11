
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
public class HocSinh {
    private String soThich;
    private String gioiTinh;
    private String khoiThi;
    private ArrayList<Double>listDiemTongKet12=new ArrayList();
    private ArrayList<Double>listDiemThiThu=new ArrayList();
    private String khaNangTaiChinh;
    private String khuVucUuTien;
    private String uuTienDacBiet;
    private String diaDiem;
    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }


    public String getSoThich() {
        return soThich;
    }

    public void setSoThich(String soThich) {
        this.soThich = soThich;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getKhoiThi() {
        return khoiThi;
    }

    public void setKhoiThi(String khoiThi) {
        this.khoiThi = khoiThi;
    }

    public ArrayList<Double> getListDiemTongKet12() {
        return listDiemTongKet12;
    }

    public void setListDiemTongKet12(ArrayList<Double> listDiemTongKet12) {
        this.listDiemTongKet12 = listDiemTongKet12;
    }

    public ArrayList<Double> getListDiemThiThu() {
        return listDiemThiThu;
    }

    public void setListDiemThiThu(ArrayList<Double> listDiemThiThu) {
        this.listDiemThiThu = listDiemThiThu;
    }

    public String getKhaNangTaiChinh() {
        return khaNangTaiChinh;
    }

    public void setKhaNangTaiChinh(String khaNangTaiChinh) {
        this.khaNangTaiChinh = khaNangTaiChinh;
    }

    public String getKhuVucUuTien() {
        return khuVucUuTien;
    }

    public void setKhuVucUuTien(String khuVucUuTien) {
        this.khuVucUuTien = khuVucUuTien;
    }

    public String getUuTienDacBiet() {
        return uuTienDacBiet;
    }

    public void setUuTienDacBiet(String uuTienDacBiet) {
        this.uuTienDacBiet = uuTienDacBiet;
    }
    public String hienThiThongTin(){
        String temp="Giới tính:"+this.getGioiTinh()+"\nKhả năng tài chính:"+this.getKhaNangTaiChinh()+"\nKhối thi:"+this.getKhoiThi()+"\nKhu vực ưu tiên:"+this.getKhuVucUuTien()+"\nSở thích:"+this.getSoThich()+"\nƯu tiên đặc biệt:"+this.getUuTienDacBiet();
        return temp;
    }
    
}
