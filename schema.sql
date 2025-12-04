CREATE DATABASE JobApplicationDB;
USE JobApplicationDB;
CREATE TABLE Admin (
    Admin_id INT PRIMARY KEY,
    Admin_name VARCHAR(50),
    Admin_mail VARCHAR(50),
    Password VARCHAR(50),
    Role VARCHAR(20)
);
CREATE TABLE Companies (
    Comp_id INT PRIMARY KEY,
    Comp_name VARCHAR(50),
    Comp_phone VARCHAR(15),
    Comp_mail VARCHAR(50),
    website VARCHAR(100),
    Admin_id INT,
    FOREIGN KEY (Admin_id) REFERENCES Admin(Admin_id)
);
CREATE TABLE Candidates (
    Cdt_id INT PRIMARY KEY,
    Cdt_name VARCHAR(50),
    Cdt_phone VARCHAR(15),
    Cdt_mail VARCHAR(50),
    Exp_years INT,
    resume VARCHAR(255),
    registration DATE,
    apply DATE
);
CREATE TABLE Job_Postings (
    Job_id INT PRIMARY KEY,
    title VARCHAR(100),
    Skills_req TEXT,
    Exp_req INT,
    Posted_date DATE,
    deadline DATE,
    Job_location VARCHAR(100),
    Comp_id INT,
    FOREIGN KEY (Comp_id) REFERENCES Companies(Comp_id)
);
CREATE TABLE Applications (
    App_id INT PRIMARY KEY,
    App_date DATE,
    status VARCHAR(20),
    Resume_link VARCHAR(255),
    Job_id INT,
    Cdt_id INT,
    FOREIGN KEY (Job_id) REFERENCES Job_Postings(Job_id),
    FOREIGN KEY (Cdt_id) REFERENCES Candidates(Cdt_id)
);
INSERT INTO Admin (Admin_id, Admin_name, Admin_mail, Password, Role) VALUES
(1, 'Aarti Sharma', 'aarti.admin@mail.com', 'admin123', 'SuperAdmin'),
(2, 'Rajesh Mehta', 'rajesh.m@mail.com', 'pass456', 'HR'),
(3, 'Sneha Rao', 'sneha.rao@mail.com', 'admin789', 'Recruiter'),
(4, 'Vikas Singh', 'vikas.s@mail.com', 'vikas001', 'Manager'),
(5, 'Neha Desai', 'neha.d@mail.com', 'desai999', 'Admin');

INSERT INTO Companies (Comp_id, Comp_name, Comp_phone, Comp_mail, website, Admin_id) VALUES
(101, 'TechNova', '9876543210', 'hr@technova.com', 'www.technova.com', 1),
(102, 'InnoSoft', '9123456789', 'jobs@innosoft.com', 'www.innosoft.com', 2),
(103, 'DataBridge', '9988776655', 'careers@databridge.com', 'www.databridge.com', 3),
(104, 'SkyTech', '9812345678', 'hr@skytech.com', 'www.skytech.com', 4),
(105, 'GreenAI', '9871234567', 'joinus@greenai.com', 'www.greenai.com', 5);

INSERT INTO Candidates (Cdt_id, Cdt_name, Cdt_phone, Cdt_mail, Exp_years, resume, registration, apply) VALUES
(201, 'Nikita Jaiswal', '9876541111', 'nikita@mail.com', 2, 'link_to_resume1.pdf', '2024-11-01', '2024-11-10'),
(202, 'Rohit Patel', '9123452222', 'rohit.patel@mail.com', 3, 'link_to_resume2.pdf', '2024-11-02', '2024-11-11'),
(203, 'Priya Verma', '9988773333', 'priya.v@mail.com', 1, 'link_to_resume3.pdf', '2024-11-03', '2024-11-12'),
(204, 'Aman Sharma', '9812344444', 'aman.sharma@mail.com', 4, 'link_to_resume4.pdf', '2024-11-04', '2024-11-13'),
(205, 'Kriti Sen', '9871235555', 'kriti.sen@mail.com', 2, 'link_to_resume5.pdf', '2024-11-05', '2024-11-14');

INSERT INTO Job_Postings (Job_id, title, Skills_req, Exp_req, Posted_date, deadline, Job_location, Comp_id) VALUES
(301, 'Frontend Developer', 'HTML, CSS, JavaScript, Angular', 2, '2024-11-05', '2024-11-20', 'Pune', 101),
(302, 'Backend Developer', 'Node.js, Express, MongoDB', 3, '2024-11-06', '2024-11-21', 'Mumbai', 102),
(303, 'Data Analyst', 'SQL, Python, Excel', 1, '2024-11-07', '2024-11-22', 'Hyderabad', 103),
(304, 'DevOps Engineer', 'Docker, Jenkins, AWS', 2, '2024-11-08', '2024-11-23', 'Bangalore', 104),
(305, 'AI Researcher', 'Python, ML, DL, TensorFlow', 3, '2024-11-09', '2024-11-24', 'Delhi', 105);

INSERT INTO Applications (App_id, App_date, status, Resume_link, Job_id, Cdt_id) VALUES
(401, '2024-11-10', 'Pending', 'link_to_resume1.pdf', 301, 201),
(402, '2024-11-11', 'Reviewed', 'link_to_resume2.pdf', 302, 202),
(403, '2024-11-12', 'Interviewed', 'link_to_resume3.pdf', 303, 203),
(404, '2024-11-13', 'Rejected', 'link_to_resume4.pdf', 304, 204),
(405, '2024-11-14', 'Selected', 'link_to_resume5.pdf', 305, 205);

