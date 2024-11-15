<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>DANH SÁCH PHÒNG TRỌ</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>===DANH SÁCH PHÒNG TRỌ===</h1>--%>
<%--<form action="/?action=search" method="post">--%>
<%--    <input type="hidden" name="action" value="search">--%>
<%--    <input type="text" name="keyword" placeholder="Nhập mã phòng, tên người thuê hoặc SĐT">--%>
<%--    <button type="submit">Tìm kiếm</button>--%>
<%--</form>--%>

<%--<a href="/?action=show_create_form">Thêm mới phòng trọ</a>--%>
<%--<form action="/?action=delete" method="post">--%>
<%--    <table border="1">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>STT</th>--%>
<%--            <th>Mã phòng trọ</th>--%>
<%--            <th>Tên người thuê</th>--%>
<%--            <th>Số điện thoại</th>--%>
<%--            <th>Ngày bắt đầu thuê</th>--%>
<%--            <th>Hình thức thanh toán</th>--%>
<%--            <th>Ghi chú</th>--%>
<%--            <th></th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        &lt;%&ndash;    JSTL&ndash;%&gt;--%>
<%--        <c:forEach items="${phongTroList}" var="p" varStatus="loop">--%>
<%--            <tr>--%>
<%--                <td>${loop.count}</td>--%>
<%--                <td>${p.maPhongTroFormatted}</td>--%>
<%--                <td>${p.name}</td>--%>
<%--                <td>${p.sdt}</td>--%>
<%--                <td>${p.ngayThue}</td>--%>
<%--                <td>${p.hinhThuc.ten_hinhThuc}</td>--%>
<%--                <td>${p.ghiChu}</td>--%>
<%--                <td>--%>
<%--                    <input type="checkbox" name="selectDeleteIdList" value="${p.id_phong}">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>

<%--    <button type="submit" onclick="return confirmDelete()">Xóa các mục đã chọn</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--<script>--%>
<%--    function confirmDelete() {--%>
<%--        const checkboxes = document.querySelectorAll('input[name="selectDeleteIdList"]:checked');--%>
<%--        if (checkboxes.length === 0) {--%>
<%--            alert("vui lòng chọn ít nhất 1 mục để xóa.");--%>
<%--            return false;--%>
<%--        }--%>

<%--        let selectNames = [];--%>
<%--        checkboxes.forEach(checkboxes => {--%>
<%--            const row = checkboxes.closest("tr");--%>
<%--            const tenNguoiThue = row.querySelector("td:nth-child(3)").innerText;--%>
<%--            selectNames.push(tenNguoiThue);--%>
<%--        })--%>

<%--        return confirm("Bạn chắc chắn muốn xóa những người thuê : \n" + selectNames.join("\n"));--%>
<%--    }--%>
<%--</script>--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>DANH SÁCH PHÒNG TRỌ</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table-wrapper {
            max-height: 400px;
            overflow-y: auto;
            border: 1px solid #ddd;
            margin-bottom: 20px;
        }
        .table thead th {
            position: sticky;
            top: 0;
            background-color: #343a40;
            color: white;
            z-index: 1;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">DANH SÁCH PHÒNG TRỌ</h1>

    <!-- Search Form -->
    <form action="/?action=search" method="post" class="form-inline mb-4">
        <input type="text" name="keyword" class="form-control mr-2" placeholder="Nhập mã phòng, tên người thuê hoặc SĐT">
        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
    </form>

    <!-- Add New Room Link -->
    <div class="mb-3">
        <a href="/?action=show_create_form" class="btn btn-success">Thêm mới phòng trọ</a>
    </div>

    <!-- Scrollable Table Wrapper -->
    <div class="table-wrapper">
        <form action="/?action=delete" method="post" id="deleteForm">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                <tr>
                    <th>STT</th>
                    <th>Mã phòng trọ</th>
                    <th>Tên người thuê</th>
                    <th>Số điện thoại</th>
                    <th>Ngày bắt đầu thuê</th>
                    <th>Hình thức thanh toán</th>
                    <th>Ghi chú</th>
                    <th>Chọn</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${phongTroList}" var="p" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${p.maPhongTroFormatted}</td>
                        <td>${p.name}</td>
                        <td>${p.sdt}</td>
                        <td>${p.ngayThue}</td>
                        <td>${p.hinhThuc.ten_hinhThuc}</td>
                        <td>${p.ghiChu}</td>
                        <td>
                            <input type="checkbox" name="selectDeleteIdList" value="${p.id_phong}">
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </div>

    <!-- Delete Button to Trigger Modal -->
    <button type="button" class="btn btn-danger" onclick="showDeleteModal()">Xóa các mục đã chọn</button>

    <!-- Modal for Delete Confirmation -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Xác nhận xóa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những người thuê sau:</p>
                    <ul id="selectedNamesList"></ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-danger" onclick="confirmDelete()">Xác nhận</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function showDeleteModal() {
        const selectedNamesList = document.getElementById('selectedNamesList');
        selectedNamesList.innerHTML = '';  // Clear any previous list

        const checkboxes = document.querySelectorAll('input[name="selectDeleteIdList"]:checked');
        if (checkboxes.length === 0) {
            alert("Vui lòng chọn ít nhất 1 mục để xóa.");
            return;
        }

        checkboxes.forEach(checkbox => {
            const row = checkbox.closest("tr");
            const tenantName = row.querySelector("td:nth-child(3)").innerText;
            const listItem = document.createElement("li");
            listItem.textContent = tenantName;
            selectedNamesList.appendChild(listItem);
        });

        $('#deleteModal').modal('show');  // Show the modal
    }

    function confirmDelete() {
        $('#deleteForm').submit();  // Submit the form on confirmation
    }
</script>
</body>
</html>
