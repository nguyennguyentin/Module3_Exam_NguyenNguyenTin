package org.example.exam_project_md3.controller;

import org.example.exam_project_md3.model.HinhThuc;
import org.example.exam_project_md3.model.PhongTro;
import org.example.exam_project_md3.repository.HinhThucRepository;
import org.example.exam_project_md3.repository.PhongTroRepository;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet(name = "PhongTroServlet", value = "")
public class PhongTroServlet extends HttpServlet {
    private PhongTroRepository phongTroRepository = new PhongTroRepository();
    private HinhThucRepository hinhThucRepository = new HinhThucRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "show_create_form":
                showCreateForm(request,response);
                break;
            default:
                showList(request,response);
                break;
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("add.jsp");
        List<HinhThuc> hinhThucs = hinhThucRepository.findAll();
        try {
            request.setAttribute("hinhThucs", hinhThucs);
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List< PhongTro> phongTroList = phongTroRepository.findAll();
        request.setAttribute("phongTroList",phongTroList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create_product":
                createProduct(request,response);
                break;
    }
}

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String sdt = request.getParameter("sdt");
        Date ngayThue =Date.valueOf(request.getParameter("ngayThue"));
        int id_hinhThuc = Integer.parseInt(request.getParameter("id_hinhThuc"));
        HinhThuc hinhThuc = new HinhThuc();
        hinhThuc.setId_hinhThuc(id_hinhThuc);
        String ghiChu = request.getParameter("ghiChu");
        PhongTro phongTro = new PhongTro(name, sdt,ngayThue,hinhThuc,ghiChu);
        phongTro.setHinhThuc(hinhThuc);
        phongTroRepository.save(phongTro);
        try {
            response.sendRedirect("");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    }