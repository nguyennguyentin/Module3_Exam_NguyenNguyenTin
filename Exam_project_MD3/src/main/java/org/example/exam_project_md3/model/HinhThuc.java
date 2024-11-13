package org.example.exam_project_md3.model;

public class HinhThuc {
    private int id_hinhThuc;
    private String ten_hinhThuc;

    public HinhThuc(int id_hinhThuc, String ten_hinhThuc) {
        this.id_hinhThuc = id_hinhThuc;
        this.ten_hinhThuc = ten_hinhThuc;
    }

    public HinhThuc() {
    }

    public int getId_hinhThuc() {
        return id_hinhThuc;
    }

    public void setId_hinhThuc(int id_hinhThuc) {
        this.id_hinhThuc = id_hinhThuc;
    }

    public String getTen_hinhThuc() {
        return ten_hinhThuc;
    }

    public void setTen_hinhThuc(String ten_hinhThuc) {
        this.ten_hinhThuc = ten_hinhThuc;
    }
}
