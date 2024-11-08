CREATE DATABASE ClinicDB;

USE ClinicDB;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    ContactNumber NVARCHAR(15),
    Email NVARCHAR(100),
    MedicalHistory NVARCHAR(MAX)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Specialty NVARCHAR(50),
    ConsultationFee DECIMAL(18, 2)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
    DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID),
    AppointmentDate DATETIME,
    Status NVARCHAR(20)
);