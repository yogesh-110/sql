create database SchoolSysDB



use SchoolSysDB


create table Class(
ClassId int primary key identity (1,1) not null,
ClassName varchar(50) null
)

create table Subject(
SubjectId int primary key identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
SubjectName varchar(50) null
)


create table Student(
StudentId int primary key identity (1,1) not null,
Name varchar(50) null,
DOB date null,
Gender varchar(50) null,
Mobile bigint null,
RollNo varchar(50) null,
Address varchar(max) null,
ClassId int foreign key references Class(ClassId) null
)

create table Teacher(
TeacherId int primary key identity(1,1) not null,
Name varchar(50) null,
DOB date null,
Gender varchar(50) null,
Mobile bigint null,
Email varchar(50) null,
Address varchar(max) null,
Password varchar(20) null
)

Create table TeacherSubject(
Id int primary key identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
SubjectId int foreign key references Subject(SubjectId) null,
TeacherId int foreign key references Teacher(TeacherId) null
)

create table TeacherAttendance(
Id int primary key identity(1,1) not null,
TeacherId int foreign key references Teacher(TeacherId) null,
Status bit null,
Date date null
)

create table  StudentAttendance(
Id int primary key identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
SubjectId int foreign key references Subject(SubjectId) null,
RollNo Varchar(20) null,
Status bit null,
Date date null
)

create table Fees(
FeesId int primary key identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
FeesAmount int null
)


create table Exam(
ExamId int primary key Identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
SubjectId int foreign key references Subject(SubjectId) null,
RollNo Varchar(20) null,
TotalMarks int null,
OutOfMarks int null
)

create table Expense(
ExpenseId int primary key identity(1,1) not null,
ClassId int foreign key references Class(ClassId) null,
SubjectId int foreign key references Subject(SubjectId) null,
ChargeAmount int null
)

