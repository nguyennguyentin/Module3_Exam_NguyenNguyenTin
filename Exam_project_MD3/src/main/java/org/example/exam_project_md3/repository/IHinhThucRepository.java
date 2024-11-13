package org.example.exam_project_md3.repository;

import org.example.exam_project_md3.model.HinhThuc;

import java.util.List;

public interface IHinhThucRepository {
    HinhThuc findById(int id);
    List<HinhThuc> findAll();
}
