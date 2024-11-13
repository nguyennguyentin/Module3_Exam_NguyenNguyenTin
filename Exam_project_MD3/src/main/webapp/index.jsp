<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>DANH SÁCH PHÒNG TRỌ</title>
</head>
<body>

<h1>===DANH SÁCH PHÒNG TRỌ===</h1>

<a href="/?action=">Thêm mới phòng trọ</a>
<table border="1">
  <thead>
  <tr>
    <th>STT</th>
    <th>Mã phòng trọ</th>
    <th>Tên người thuê</th>
    <th>Số điện thoại</th>
    <th>Ngày bắt đầu thuê</th>
    <th>Hình thức thanh toán</th>
    <th>Ghi chú</th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <%--    JSTL--%>
  <c:forEach items="${phongTroList}" var="p" varStatus="loop">
  <tr>
    <td>${loop.count}</td>
    <td>${p.id_phong}</td>
    <td>${p.name}</td>
    <td>${p.sdt}</td>
    <td>${p.ngayThue}</td>
    <td>${p.hinhThuc.ten_hinhThuc}</td>
    <td>${p.ghiChu}</td>
    <td></td>
  </tr>
  </c:forEach>
</body>
</html>