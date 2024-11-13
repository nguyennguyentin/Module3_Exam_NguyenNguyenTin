package org.example.exam_project_md3.repository;

import org.example.exam_project_md3.model.HinhThuc;
import org.example.exam_project_md3.model.PhongTro;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PhongTroRepository extends BaseRepository implements IPhongTroRepository{
    private final HinhThucRepository hinhThucRepository = new HinhThucRepository();
    @Override
    public List<PhongTro> findAll() {
        String sql = "select *\n" +
                "from phong_tro;\n";
        List<PhongTro> phongTroList = new ArrayList<>();
        Connection connection = getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                int id = resultSet.getInt("id_phong");
                String name = resultSet.getString("ten");
                String sdt = resultSet.getString("sdt");
                Date ngayThue = resultSet.getDate("ngayThue");
                String ghiChu = resultSet.getString("ghiChu");
                int id_hinhThuc = resultSet.getInt("id_hinhThuc");
                HinhThuc hinhThuc = hinhThucRepository.findById(id_hinhThuc);

                phongTroList.add(new PhongTro(id,name,sdt,ngayThue,hinhThuc,ghiChu));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return phongTroList;
    }

    @Override
    public void save(PhongTro phongTro) {
        String sql = "INSERT INTO phong_tro (ten, sdt, ngayThue, id_hinhThuc, ghiChu) VALUES\n" +
                "(?, ?, ?, ?, ?);";


        Connection c = getConnection();
        try {
            PreparedStatement preparedStatement = null;
            preparedStatement = c.prepareStatement(sql);
            preparedStatement.setString(1, phongTro.getName());
            preparedStatement.setString(2, phongTro.getSdt());
            preparedStatement.setDate(3, phongTro.getNgayThue());
            preparedStatement.setInt(4,phongTro.getHinhThuc().getId_hinhThuc());
            preparedStatement.setString(5, phongTro.getGhiChu());
            preparedStatement.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
        }
}