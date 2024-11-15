drop database exam_md3;
create database exam_md3;
use exam_md3;

create table hinh_thuc(
id_hinhThuc int primary key auto_increment,
ten_hinhThuc varchar(100)
);

create table phong_tro(
id_phong int primary key auto_increment,
ten varchar(100),
sdt varchar(20),
ngayThue date ,
id_hinhThuc int,
ghiChu varchar(400),
foreign key (id_hinhThuc) references hinh_thuc(id_hinhThuc)
);

INSERT INTO hinh_thuc (ten_HinhThuc) VALUES 
('theo tháng'),
('theo quý'),
('theo năm');

INSERT INTO phong_tro (ten, sdt, ngayThue, id_hinhThuc, ghiChu) VALUES
('Phong A', '0123456789', '2024-01-01', 1, 'Ghi chú 1'),
('Phong B', '0123456790', '2024-02-01', 2, 'Ghi chú 2'),
('Phong C', '0123456791', '2024-03-01', 3, 'Ghi chú 3'),
('Phong D', '0123456792', '2024-04-01', 1, 'Ghi chú 4'),
('Phong E', '0123456793', '2024-05-01', 2, 'Ghi chú 5'),
('Phong F', '0123456794', '2024-06-01', 3, 'Ghi chú 6'),
('Phong G', '0123456795', '2024-07-01', 1, 'Ghi chú 7'),
('Phong H', '0123456796', '2024-08-01', 2, 'Ghi chú 8'),
('Phong I', '0123456797', '2024-09-01', 3, 'Ghi chú 9'),
('Phong J', '0123456798', '2024-10-01', 1, 'Ghi chú 10');





