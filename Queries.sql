select * from bankloan

select count(id) as Total_Loan_applications from bankloan


SELECT COUNT(id) AS MTD_total_loan_applications
FROM bankloan
WHERE EXTRACT(MONTH FROM issue_date) = 12;

SELECT COUNT(id) AS PMTD_total_loan_applications
FROM bankloan
WHERE EXTRACT(MONTH FROM issue_date) = 11;

select sum(loan_amount) as total_funded_amount
from bankloan

select sum(loan_amount) as MTD_total_funded_amount
from bankloan
where extract(month from issue_date)=12

select sum(loan_amount) as PMTD_total_funded_amount
from bankloan
where extract(month from issue_date)=11

select sum(total_payment) as total_amount_recieved
from bankloan

select sum(total_payment) as MTD_total_amount_recieved
from bankloan
where extract(month from issue_date)=12

select sum(total_payment) as PMTD_total_amount_recieved
from bankloan
where extract(month from issue_date)=11

select avg(int_rate)*100 as average_interest_rate
from bankloan

select avg(int_rate)*100 as MTD_average_interest_rate
from bankloan
where extract(month from issue_date)=12

select avg(int_rate)*100 as PMTD_average_interest_rate
from bankloan
where extract(month from issue_date)=11

select avg(dti)*100 as average_dti
from bankloan

select avg(dti)*100 as MTD_average_dti
from bankloan
where extract(month from issue_date)=12

select avg(dti)*100 as PMTD_average_dti
from bankloan
where extract(month from issue_date)=11

SELECT 
    COUNT(*) AS total_loans,
    COUNT(*) FILTER (WHERE loan_status in ('Fully Paid','Current')) AS good_loans,
    COUNT(*) FILTER (WHERE loan_status = 'Charged Off') AS bad_loans,
	COUNT(*) FILTER (WHERE loan_status in ('Fully Paid','Current')) * 100.0 / COUNT(*) AS good_loan_percentage,
	COUNT(*) FILTER (WHERE loan_status = 'Charged Off') * 100.0 / COUNT(*) AS bad_loan_percentage
FROM bankloan;

-- Good loan Funded amount and Good loan amount received

select 
sum(loan_amount) FILTER(where loan_status in ('Fully Paid','Current')) as good_loan_amount_funded, 
sum(total_payment) FILTER(where loan_status in ('Fully Paid','Current')) as good_loan_amount_received,
sum(loan_amount) FILTER(where loan_status = 'Charged Off') as bad_loan_amount_funded, 
sum(total_payment) FILTER(where loan_status  = 'Charged Off') as bad_loan_amount_received
from bankloan

--LoanStatus

select
loan_status,
count(id) as Total_Loan_applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
avg(int_rate)*100 as average_interest_rate
from bankloan
group by loan_status
order by total_amount_recieved desc

-- MTD loanStatus

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_total_amount_recieved, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bankloan
WHERE extract (MONTH from issue_date) = 12 
GROUP BY loan_status
order by MTD_total_amount_recieved desc

--Monthwise BankLoanReport
select 
    extract(month from issue_date) as month_number,
    to_char(issue_date, 'month') as month_name,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by 
    extract(month from issue_date),
    to_char(issue_date, 'month')
order by 
    month_number;

--Statewise BankLoanReport

select 
    address_state as state,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by state
order by total_amount_received desc

--LoanTermAnalysis

select 
    term,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by term
order by term

-- Employee Length Analysis

select 
    emp_length AS emp_work_length,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by emp_length
order by total_loan_applications desc

--Loan Purpose Breakdown 

select 
    purpose as purpose_for_getting_loan,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by purpose
order by total_loan_applications desc

--Home Ownership Analysis

select 
    home_ownership,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_amount_received
from bankloan
group by home_ownership
order by total_loan_applications desc