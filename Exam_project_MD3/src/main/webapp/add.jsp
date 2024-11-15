<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>THÊM MỚI PHÒNG TRỌ</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>Thêm mới sản phẩm</h1>--%>
<%--<form action="/?action=create" method="post">--%>
<%--    Tên: <input type="text" name="name" required pattern="^[A-Za-zÀ-ỹ\\s]{5,50}$"--%>
<%--                title="Tên phải là chữ cái, độ dài từ 5 đến 50 ký tự, không chứa số hoặc ký tự đặc biệt.">--%>
<%--    sdt: <input type="text" name="sdt" required pattern="^[0-9]{10}$"--%>
<%--                title="Số điện thoại phải là 10 chữ số.">--%>
<%--    Ngày thuê: <input type="date" name="ngayThue" required--%>
<%--                      title="Ngày bắt đầu thuê không được là ngày trong quá khứ."--%>
<%--                      min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">--%>
<%--    Loai san pham:--%>
<%--    <select name="id_hinhThuc" >--%>
<%--        <c:forEach items="${hinhThucs}" var="c">--%>
<%--            <option value="${c.id_hinhThuc}">${c.ten_hinhThuc}</option>--%>
<%--        </c:forEach>--%>
<%--    </select>--%>
<%--    Ghi chú: <textarea name="ghiChu" maxlength="200"--%>
<%--                       placeholder="Ghi chú (tối đa 200 ký tự)"></textarea>--%>

<%--    <input type="submit" value="Thêm mới">--%>

<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>THÊM MỚI PHÒNG TRỌ</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="mt-5 mb-4 text-center">Thêm mới sản phẩm</h1>
    <form action="/?action=create" method="post" class="p-4 border rounded bg-light">
        <div class="form-group">
            <label for="name">Tên</label>
            <input type="text" class="form-control" id="name" name="name" required pattern="^[A-Za-zÀ-ỹ\s]{5,50}$"
                   title="Tên phải là chữ cái, độ dài từ 5 đến 50 ký tự, không chứa số hoặc ký tự đặc biệt.">
        </div>

        <div class="form-group">
            <label for="sdt">Số điện thoại</label>
            <input type="text" class="form-control" id="sdt" name="sdt" required pattern="^[0-9]{10}$"
                   title="Số điện thoại phải là 10 chữ số.">
        </div>

        <div class="form-group">
            <label for="ngayThue">Ngày thuê</label>
            <input type="date" class="form-control" id="ngayThue" name="ngayThue" required
                   title="Ngày bắt đầu thuê không được là ngày trong quá khứ."
                   min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
        </div>

        <div class="form-group">
            <label for="id_hinhThuc">Loại sản phẩm</label>
            <select class="form-control" id="id_hinhThuc" name="id_hinhThuc">
                <c:forEach items="${hinhThucs}" var="c">
                    <option value="${c.id_hinhThuc}">${c.ten_hinhThuc}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="ghiChu">Ghi chú</label>
            <textarea class="form-control" id="ghiChu" name="ghiChu" maxlength="200"
                      placeholder="Ghi chú (tối đa 200 ký tự)"></textarea>
        </div>

        <button type="submit" class="btn btn-primary btn-block">Thêm mới</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
