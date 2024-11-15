package org.example.exam_project_md3.model;

import java.sql.Date;

public class PhongTro {
    private int id_phong;
    private String name;
    private String sdt;
    private Date ngayThue;
    private HinhThuc hinhThuc;
    private String ghiChu;


    public PhongTro(int id_phong, String name, String sdt, Date ngayThue, HinhThuc hinhThuc ,String ghiChu ) {
        this.id_phong = id_phong;
        this.name = name;
        this.sdt = sdt;
        this.ngayThue = ngayThue;
        this.hinhThuc = hinhThuc;
        this.ghiChu = ghiChu;
    }

    public PhongTro() {
    }

    public PhongTro(String name, String sdt, Date ngayThue, HinhThuc hinhThuc, String ghiChu) {
        this.name = name;
        this.sdt = sdt;
        this.ngayThue = ngayThue;
        this.hinhThuc = hinhThuc;
        this.ghiChu = ghiChu;
    }

    public int getId_phong() {
        return id_phong;
    }

    public void setId_phong(int id_phong) {
        this.id_phong = id_phong;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public Date getNgayThue() {
        return ngayThue;
    }

    public void setNgayThue(Date ngayThue) {
        this.ngayThue = ngayThue;
    }

    public HinhThuc getHinhThuc() {
        return hinhThuc;
    }

    public void setHinhThuc(HinhThuc hinhThuc) {
        this.hinhThuc = hinhThuc;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    @Override
    public String toString() {
        return "PhongTro{" +
                ", name='" + name + '\'' +
                ", sdt='" + sdt + '\'' +
                ", ngayThue=" + ngayThue +
                ", hinhThuc=" + hinhThuc +
                ", ghiChu='" + ghiChu + '\'' +
                '}';
    }

    // Phương thức để lấy mã phòng trọ dạng "PT-001"
    public String getMaPhongTroFormatted() {
        return String.format("PT-%03d", id_phong);
    }
}
