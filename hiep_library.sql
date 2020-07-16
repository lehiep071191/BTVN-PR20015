drop table if exists bookauthor  ;
drop table if exists bookborrow ;
drop table if exists  borrow;
drop table if exists author;
drop table if exists reader;
drop table if exists book;

create table if not exists reader(
reader_id int auto_increment,
readername varchar(100) not null,
sex bit,
phone varchar(20),
primary key (reader_id));

create table if not exists borrow(
 borrow_id int auto_increment,
  borrowdate  date not null,
readerid int not null,
foreign key (readerid) REFERENCES reader(reader_id),
primary key (borrow_id));

create table if not exists book(
book_id int auto_increment,
title varchar(100) not null,
category varchar(100) not null,
status bit not null,
primary key (book_id ));

create table if not exists bookborrow(
bookborrow_id int auto_increment,
bookid int not null,
borrowid int not null,
foreign key (bookid) REFERENCES book(book_id),
foreign key (borrowid) REFERENCES borrow(borrow_id ),
primary key (bookborrow_id));

create table if not exists author(
author_id int auto_increment,
authorname varchar(100) not null,
DOB date,
sex bit,
primary key (author_id));

create table if not exists bookauthor(
bookauthor_id int auto_increment,
bookid int not null,
authorid int not null,
foreign key (bookid) REFERENCES book(book_id),
foreign key (authorid) REFERENCES author(author_id),
primary key (bookauthor_id));


-- chen du lieu

insert into reader(readername,sex,phone)
values
("Stephen King",1,"0123456789"),
("Trần Văn Thuấn",1,"0123123233"),
("Tạ Văn An",1,"0955641301"),
("Lê Văn Bình",1,"0955641302"),
("Lê Thị Chúc",1,"0955641303"),
("Lê Tiến Dũng",1,"0955641304"),
("Lê Văn Huy",1,"0955641305"),
("Lê Văn Phương ",1,"0955641306"),
("Vũ Văn Giang",1,"0955641307"),
("NGuyễn Văn Hoàng ",1,"0955641308"),
("Lê Văn Yến",0,"0955641309"),
("Lê Văn Vở ",1,"0955641310"),
("Lê Văn Khánh", 1,"0955641311"),
("Nguyễn Văn Long",1,"0955641312"),
("Lê Văn  Minh",1,"0955641313"),
("Lê Thị Mẹt",0,"0955641314");

insert into borrow(borrowdate,readerid)
values
("2011-10-01",11),
("2011-10-01",12),
("2011-10-01",2),
("2011-10-02",4),
("2011-10-02",1),
("2011-10-02",5),
("2011-10-03",7),
("2011-10-05",3),
("2011-10-07",2),
("2011-10-07",6),
("2011-10-09",4),
("2011-10-15",1),
("2011-10-20",2),
("2012-10-20",5),
("2012-01-01",7),
("2012-01-02",9),
("2012-01-03",11),
("2012-01-04",12),
("2012-01-07",1),
("2012-01-08",5),
("2012-01-08",2),
("2012-01-09",7),
("2012-01-21",8),
("2012-01-25",9),
("2012-02-05",10),
("2012-02-08",3),
("2012-02-09",15),
("2012-02-11",13),
("2012-02-13",14),
("2012-02-15",16),
("2012-02-19",15),
("2012-02-22",13),
("2012-02-25",7),
("2012-03-01",15),
("2012-03-05",12),
("2012-03-07",11);

insert into author( authorname,DOB,sex)
values
("Nguyễn Nhật Ánh","1955-05-07",1),
("Stephen King","1947-09-21",1),
("Osho","1931-12-11",1),
("Toriyama Akira","1955-04-05",1),
("Thích Thông Lạc","1928-05-28",1),
("Kishimoto Mashashi","1974-11-08",1),
("Nguyễn Sinh Hùng","1946-01-18",1);




insert into book(title,category,status)
values
("Bộ Luật Dân Sự","Chính trị – pháp luật",1),
("Luật Đất Đai","Chính trị – pháp luật",0),
("Bộ Luật Tố Tụng Hình Sự","Chính trị – pháp luật",1),
("Bộ Luật Lao Động","Chính trị – pháp luật",1),
("Bộ Luật Tố Tụng Dân Sự","Chính trị – pháp luật",0),
("Bộ Luật Hình Sự Hiện Hành","Chính trị – pháp luật",1),
("Life 3.0 - Con người trong kỷ nguyên trí tuệ nhân tạo","Khoa học công nghệ – Kinh tế",0),
("Chạy đua với Robot","Khoa học công nghệ – Kinh tế",1),
("Cuộc cách mạng AI","Khoa học công nghệ – Kinh tế",0),
("AI trong cuộc cách mạng công nghệ 4.0","Khoa học công nghệ – Kinh tế",1),
("Cuộc cách mạng AI","Khoa học công nghệ – Kinh tế",0),
("Cẩm nang Scrum cho người mới bắt đầu","Khoa học công nghệ – Kinh tế",1),
("6 phát minh làm nên thời đại","Khoa học công nghệ – Kinh tế",0),
("THE INEVITABLE: Làm chủ công nghệ, làm chủ tương lai","Khoa học công nghệ – Kinh tế",1),
("Những người tiên phong","Khoa học công nghệ – Kinh tế",0),
("Dị nghị luận đồng chân dung","Văn hóa xã hội – Lịch sử",1),
("Thi nhân Việt Nam","Văn hóa xã hội – Lịch sử",0),
("Trăm năm trong cõi","Văn hóa xã hội – Lịch sử",0),
("Tôi tự hào là người Việt Nam","Văn hóa xã hội – Lịch sử",1),
("Thói quen xấu ơi, chào mi","Văn hóa xã hội – Lịch sử",0),
("Việt Nam sau 1975 - Đôi điều cảm nhận","Văn hóa xã hội – Lịch sử",1),
("6 ông chồng của vợ tôi","Văn học nghệ thuật",1),
("LÊ NGỌC TRÀ: VĂN CHƯƠNG, THẨM MĨ VÀ VĂN HÓA","Văn học nghệ thuật",0),
("Ở ĐÂU ĐÓ CÓ ĐIỆN THOẠI GỌI TÔI","Văn học nghệ thuật",0),
("NGƯỜI THẦY","Văn học nghệ thuật",1),
("Chậm hơn sự dừng lại","Văn học nghệ thuật",0),
("Đợi anh về","Văn học nghệ thuật",1),
("CÁNH CHIM TRONG GIÓ : Tản mạn về đện ảnh","Văn học nghệ thuật",1),
("HỢP TUYỂN VĂN HỌC CỔ ĐIỂN HÀN QUỐC","Văn học nghệ thuật",0),
("Giáo trình Quốc phòng An ninh","Giáo trình",1),
("Giáo trình Thuế","Giáo trình",1),
("Giáo trình Triết học","Giáo trình",0),
("Giáo trình Toán cao cấp","Giáo trình",0),
("Anh trai Em gái","Truyện, tiểu thuyết",1),
("Xin Lỗi Em Chỉ Là Con Đĩ","Truyện, tiểu thuyết",1),
("Yêu Anh Hơn Cả Tử Thần","Truyện, tiểu thuyết",0),
("Harry Potter","Truyện, tiểu thuyết",0),
("Trước Là Tiểu Nhân, Sau Là Quân Tử","Truyện, tiểu thuyết",1),
("Thiên Thần Sa Ngã","Truyện, tiểu thuyết",1),
("Kiếp Trước Em Đã Chôn Cất Cho Anh","Truyện, tiểu thuyết",0),
("Sherlock Holmes","Truyện, tiểu thuyết",0),
("Nó","Truyện, tiểu thuyết",0),
("The Shining","Truyện, tiểu thuyết",1),
("Đối đầu","Truyện, tiểu thuyết",1),
("The Outsider","Truyện, tiểu thuyết",0),
("Những chặng đường tu học của người Phật tử","Tâm lý, tâm linh, tôn giáo",1),
("Những lời tâm huyết","Tâm lý, tâm linh, tôn giáo",0),
("Tuyết giữa mùa hè","Tâm lý, tâm linh, tôn giáo",0),
("Trực giác siêu linh ","Tâm lý, tâm linh, tôn giáo",1),
("Sống can đảm ","Tâm lý, tâm linh, tôn giáo",0),
("Tỉnh thức","Tâm lý, tâm linh, tôn giáo",0),
("Hành trình về phương Đông","Tâm lý, tâm linh, tôn giáo",1),
("Đường về xứ Phật","Tâm lý, tâm linh, tôn giáo",0),
("One piece","Sách thiếu nhi",1),
("Naruto","Sách thiếu nhi",1),
("Doraemon","Sách thiếu nhi",0),
("Boruto","Sách thiếu nhi",0),
("Dragon Ball Z","Sách thiếu nhi",0),
("Dragon Ball Super","Sách thiếu nhi",1),
("Mắt Biếc","Sách thiếu nhi",0),
("Tôi thấy hoa vàng trên cỏ xanh","Sách thiếu nhi",1);

insert into bookauthor(authorid,bookid)
values 
(7,1),
(7,2),
(7,3),
(7,4),
(7,5),
(7,6),
(5,7),
(5,8),
(6,9),
(6,10),
(6,11),
(5,12),
(4,13),
(2,14),
(3,15),
(2,16),
 (4,17),
 (6,18),
 (2,19),
 (2,20),
 (2,21),
 (2,22),
 (3,23),
 (3,24),
 (4,25),
 (4,26),
 (5,27),
 (5,28),
 (4,29),
 (6,30),
 (7,31),
 (7,32),
 (5,33),
 (5,34),
 (5,35),
 (4,36),
 (4,37),
 (4,38),
 (4,39),
 (2,40),
 (2,41),
 (1,42),
 (1,43),
 (1,44),
 (1,45),
 (2,46),
 (2,47),
 (2,48),
 (2,49),
 (3,50),
 (3,51),
 (3,52),
 (5,53),
 (5,57),
 (6,55),
 (6,56),
 (6,57),
 (7,58),
 (6,59),
 (6,60),
 (5,61);
 
 Insert into bookborrow(bookid,borrowid)
values
(1,1),
(2,1),
(3,1),
(4,2),
(5,3),
(6,5),
(7,4),
(8,4),
(9,6),
(10,7),
(11,8),
(12,9),
(13,10),
(14,11),
(15,12),
(16,13),
(17,14),
(18,15),
(19,16),
(20,17),
(21,18),
(22,19),
(23,20),
(24,21),
(25,22),
(26,23),
(27,24),
(28,25),
(29,26),
(30,27),
(31,28),
(32,29),
(33,30),
(34,31),
(35,32),
(36,33),
(37,34),
(38,35),
(39,36),
(40,1),
(41,2),
(43,3),
(43,5),
(45,8),
(45,14),
(46,20),
(47,21),
(48,22),
(49,24),
(50,15),
(51,16),
(52,17),
(53,19),
(54,21),
(55,11),
(56,12),
(57,14);
-- làm câu 1 đề 2
select title
from book inner join bookborrow on book.book_id=bookborrow.bookid
inner join borrow on borrow.borrow_id=bookborrow.borrowid
where year(borrowdate)=2011
group by
title 
having count(bookid)>10;


-- làm câu 2 đề 2

select readername	
from reader inner join borrow on reader.reader_id=borrow.readerid
inner join bookborrow on bookborrow.borrowid=borrow.borrow_id
group by
readername	
having count(bookid)>10;

-- làm câu 3 đề 2
select title	
from book 
where (status)=1 and (
select book_id	
from reader inner join borrow on reader.reader_id=borrow.readerid
inner join bookborrow on bookborrow.borrowid=borrow.borrow_id
group by
readername	
having count(bookid)>10);

-- làm câu 4 đề 2


select title
from book inner join bookauthor on book.book_id=bookauthor.bookid
inner join author on author.author_id=bookauthor.authorid
where authorname="Stephen King"   And (
select book_id	
from reader inner join borrow on reader.reader_id=borrow.readerid
inner join bookborrow on bookborrow.borrowid=borrow.borrow_id
group by
readername	
having count(bookid)=1
