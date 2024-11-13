<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>THÊM MỚI PHÒNG TRỌ</title>
</head>
<body>

<h1>Thêm mới sản phẩm</h1>
<form action="/?action=create_product" method="post">
    Tên: <input type="text" name="name">
    sdt: <input type="text" name="sdt">
    Ngày thuê: <input type="date" name="ngayThue">
    Loai san pham:
    <select name="hinhThuc" >
        <c:forEach items="${hinhThucs}" var="c">
            <option value="${c.id_hinhThuc}">${c.ten_hinhThuc}</option>
        </c:forEach>
    </select>
    sdt: <input type="text" name="ghiChu">

    <input type="submit" value="Thêm mới">

</form>
</body>
</html>