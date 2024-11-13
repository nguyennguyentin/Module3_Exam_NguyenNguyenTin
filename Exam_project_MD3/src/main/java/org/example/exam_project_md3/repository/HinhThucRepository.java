package org.example.exam_project_md3.repository;

import org.example.exam_project_md3.model.HinhThuc;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HinhThucRepository extends BaseRepository implements IHinhThucRepository{
    @Override
    public HinhThuc findById(int id) {
        String sql = "SELECT * FROM hinh_thuc \n" +
                "where id_hinhThuc = ?;";
        HinhThuc hinhThuc = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String name = resultSet.getString("ten_HinhThuc");
                hinhThuc = new HinhThuc(id, name);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return hinhThuc;
    }

    @Override
    public List<HinhThuc> findAll() {
        String sql = "select * from hinh_thuc";
        List<HinhThuc> categories = new ArrayList<>();
        BaseRepository baseRepository = new BaseRepository();
        Connection c = baseRepository.getConnection();
        try {
            Statement statement = c.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id_hinhThuc");
                String name = resultSet.getString("ten_HinhThuc");
                categories.add(new HinhThuc(id, name));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return categories;
    }


}
