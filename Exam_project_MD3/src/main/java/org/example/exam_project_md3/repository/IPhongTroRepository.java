package org.example.exam_project_md3.repository;

import org.example.exam_project_md3.model.PhongTro;

import java.util.List;

public interface IPhongTroRepository {
    List<PhongTro> findAll();
    void save(PhongTro phongTro);
    void deleteBatch(List<Integer> deleteIdList);
    List<PhongTro> search(String keyword);

}
