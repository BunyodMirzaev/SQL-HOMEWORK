Easy
1. (Data)Ma’lumot — bu raqamlar, matnlar, suratlar yoki tovush kabi xom (ishlanmagan) fakt va raqamlar bo‘lib, ularni tahlil qilish yoki qayta ishlash mumkin. 
(Database)Ma’lumotlar bazasi — bu ma’lumotlarni saqlash va boshqarish uchun mo‘ljallangan tizimli va elektron shakldagi ombor.U orqali ma’lumotlarni oson qidirish, kiritish va tahrirlash mumkin.
(Relational Database)Relatsion ma’lumotlar bazasi — bu ma’lumotlarni jadval (table) ko‘rinishida saqlaydigan va ular orasidagi bog‘lanishlarni (relatsiyalarni) qo‘llab-quvvatlaydigan ma’lumotlar bazasi. Bu turdagi bazalarda asosan SQL tili ishlatiladi.
(Table)Jadval — bu ma’lumotlar bazasidagi asosiy tuzilma bo‘lib, qatorlar (row) va ustunlar (column) shaklida tashkil etiladi. Har bir qator — bitta yozuv (record), har bir ustun esa — ma’lumot turi (masalan, ism, yosh) ni bildiradi.

2. List five key features of SQL Server.
(High Availability & Disaster Recovery)
(Security)
(Advanced Querying)
(Business Intelligence)
(Performance & Scalability)

3.What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
Windows autentifikatsiyasi
SQL Server autentifikatsiyasi

Medium
1. Create database SchoolDB
go
2. USE SchoolDB;
GO
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
GO
3. 
SQL Server - Bu ma’lumotlar bazasi dvigateli (yoki serveri) hisoblanadi — u ma’lumotlarni saqlash va boshqarish uchun mo‘ljallangan dasturiy tizimdir. SQL Server so‘rovlarni bajaradi, xavfsizlikni ta’minlaydi va turli ma’lumotlar operatsiyalarini amalga oshiradi.
SSMS - SQL Server Management Studio degan so‘zlarning qisqartmasi. Bu grafik interfeysga ega boshqaruv vositasi bo‘lib, foydalanuvchilarga SQL Server bilan oson ishlash (so‘rov yozish, ma’lumotlar bazasini yaratish, o‘chirish, tahrirlash) imkonini beradi.
SQL -	Structured Query Language (tuzilgan so‘rovlar tili) degan so‘zlarning qisqartmasi. Bu ma’lumotlar bazasi bilan ishlash uchun yoziladigan til bo‘lib, uning yordamida ma’lumotlar bazasini yaratish, ma’lumot qo‘shish, o‘chirish, yangilash va qidirish mumkin. 

Hard
1.DQL	Data Query Language	Ma’lumotni so‘rash	SELECT
DML	Data Manipulation Language	Ma’lumotni qo‘shish, o‘chirish, yangilash	INSERT, UPDATE, DELETE
DDL	Data Definition Language	Tuzilmani yaratish yoki o‘zgartirish	CREATE, ALTER, DROP, TRUNCATE
DCL	Data Control Language	Ruxsat berish yoki olib tashlash	GRANT, REVOKE
TCL	Transaction Control Language	Tranzaksiyalarni boshqarish	BEGIN, COMMIT, ROLLBACK
  CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
GO

Select * from Students
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'SAMIR', 30);
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);
ALTER TABLE Students ADD Email VARCHAR(100);
DROP TABLE Courses;
GRANT SELECT ON Students TO User1;
REVOKE SELECT ON Students FROM User1;
2.
INSERT INTO Students (StudentID, Name, Age)
VALUES
(1, 'SARA', 23),
(2, 'JOHN', 22),
(3, 'JACK', 19);
SELECT * FROM Students;
USE SchoolDB;
GO
INSERT INTO Students (StudentID, Name, Age)
VALUES
(1, 'SARA', 23),
(2, 'JOHN', 22),
(3, 'JACK', 19);
SELECT * FROM Students;



