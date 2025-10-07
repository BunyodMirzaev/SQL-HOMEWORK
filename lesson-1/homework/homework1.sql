1. Define the following terms:
Data: Raw facts or figures without context, e.g., numbers, text, dates. Example: "John", "25", "New York".
Database: A structured collection of data stored electronically. It allows easy access, management, and updating of data.
Relational Database: A type of database that stores data in tables (relations) with rows and columns, and relationships between the tables are maintained using keys.
Table: A collection of related data organized in rows and columns. Each row is a record, and each column is a field (attribute).
2. List five key features of SQL Server:
Data Security – Supports authentication, encryption, and permissions.
Backup and Restore – Provides robust options for backing up and restoring databases.
High Availability – Features like Always On, failover clustering, and replication.
Integration Services (SSIS) – For ETL (Extract, Transform, Load) operations.
Advanced Query Optimizer – Improves performance by optimizing SQL queries.
3. Authentication Modes in SQL Server:
Windows Authentication – Uses the Windows credentials of the user.
SQL Server Authentication – Uses a defined username and password stored in SQL Server.

CREATE DATABASE SchoolDB;
GO
USE SchoolDB;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

Differences between SQL Server, SSMS, and SQL:
Tool	Description
SQL Server	A relational database management system (RDBMS) by Microsoft used to store and manage databases.
SSMS (SQL Server Management Studio)	A graphical user interface (GUI) tool to interact with SQL Server. Used to write queries, manage databases, and configure settings.
SQL (Structured Query Language)	A standard programming language used to manage and query data in relational databases.

SQL Command Categories:
Type	Description	Example
DQL (Data Query Language)	Used to fetch/query data from the database.	SELECT * FROM Students;
DML (Data Manipulation Language)	Used to manipulate data in tables.	INSERT, UPDATE, DELETE
DDL (Data Definition Language)	Defines or alters structure of tables, databases, etc.	CREATE, ALTER, DROP
DCL (Data Control Language)	Controls access to data.	GRANT, REVOKE
TCL (Transaction Control Language)	ManINSERT INTO Students (StudentID, Name, Age)

VALUES 
(1, 'John Doe', 20),
(2, 'Jane Smith', 22),
(3, 'Michael Lee', 19);
ages transactions.	COMMIT, ROLLBACK, SAVEPOINT

RESTORE DATABASE AdventureWorksDW2022
FROM DISK = 'C:\YourBackupPath\AdventureWorksDW2022.bak'
WITH MOVE 'AdventureWorksDW2022_Data' TO 'C:\YourDataPath\AdventureWorksDW2022.mdf',
     MOVE 'AdventureWorksDW2022_Log' TO 'C:\YourLogPath\AdventureWorksDW2022.ldf',
     REPLACE;


