
--Show all candidates
SELECT * FROM Candidates;

-- Show all job postings
SELECT * FROM Job_Postings;

-- Show all companies
SELECT * FROM Companies;

-- Show all applications
SELECT * FROM Applications;

-- List candidates with more than 2 years of experience
SELECT Cdt_name, Exp_years
FROM Candidates
WHERE Exp_years > 2;

-- List job postings in 'Pune'
SELECT title, Job_location
FROM Job_Postings
WHERE Job_location = 'Pune';

-- Get jobs with deadlines in November 2024
SELECT title, deadline
FROM Job_Postings
WHERE MONTH(deadline) = 11 AND YEAR(deadline) = 2024;

-- Show job postings with company name
SELECT J.Job_id, J.title, C.Comp_name, J.Job_location
FROM Job_Postings J
JOIN Companies C ON J.Comp_id = C.Comp_id;

-- Show applications with candidate names and job titles
SELECT A.App_id, C.Cdt_name, J.title, A.status
FROM Applications A
JOIN Candidates C ON A.Cdt_id = C.Cdt_id
JOIN Job_Postings J ON A.Job_id = J.Job_id;

-- Candidates who applied for 'Frontend Developer'
SELECT C.Cdt_name, J.title
FROM Applications A
JOIN Candidates C ON A.Cdt_id = C.Cdt_id
JOIN Job_Postings J ON A.Job_id = J.Job_id
WHERE J.title = 'Frontend Developer';

-- Count total number of candidates
SELECT COUNT(*) AS Total_Candidates FROM Candidates;

-- Count total applications for each job
SELECT Job_id, COUNT(*) AS Applications_Received
FROM Applications
GROUP BY Job_id;

-- Average required experience for all job postings
SELECT AVG(Exp_req) AS Avg_Experience_Required
FROM Job_Postings;

-- Find the candidate(s) with maximum experience
SELECT Cdt_name, Exp_years
FROM Candidates
WHERE Exp_years = (SELECT MAX(Exp_years) FROM Candidates);

-- Find jobs posted by 'TechNova'
SELECT title
FROM Job_Postings
WHERE Comp_id = (
    SELECT Comp_id FROM Companies WHERE Comp_name = 'TechNova'
);

-- Update status of an application
UPDATE Applications
SET status = 'Reviewed'
WHERE App_id = 401;

-- Delete a candidate (will fail if foreign key constraints exist)
DELETE FROM Candidates
WHERE Cdt_id = 205;
