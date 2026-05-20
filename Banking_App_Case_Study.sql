create database Banking_App;
use Banking_App;

-- customer table--
Create table Customer(CustomerID INT Primary Key,FirstName varchar(55),LastName varchar(55),Email varchar(25),Phone varchar(10),AccountCreationDate DATE);
insert into Customer values (101,'Anjali','Jadhav','adj@gmail.com','8898787928','2026-04-01');
insert into Customer values (102,'Sneha','Shirodkar','sss12@gmail.com','8898787928','2026-04-01');
insert into Customer values (103,'Pranali','Tare','prana07@gmail.com','8898787925','2026-01-01');
insert into Customer values (104,'Tejaswi','Warishe','teju22@gmail.com','8898787926','2026-02-01');
insert into Customer values (105,'Shivangi','Khedekar','dolly@gmail.com','8898787927','2026-05-01');
insert into Customer values (106,'Ankita','Raykar','anks25@gmail.com','8898787929','2026-06-01');
insert into Customer values (107,'Rashmi','Sakpal','RS13@gmail.com','8898787930','2026-07-01');
insert into Customer values (108,'Shweta','Shelar','shweta33@gmail.com','8898787921','2026-08-01');
insert into Customer values (109,'Shubham','Salvi','salvishubhs@gmail.com','8898787955','2026-09-01');
insert into Customer values (110,'Sairaj','Bodekar','sai29@gmail.com','8898787989','2026-11-01');

select * from Customer;

-- Account Table ---

Create table Accounts(AccountsID int Primary Key,cust_id int, foreign key(cust_id)references Customer(CustomerID),Account_Type varchar(20),balance decimal);
insert into Accounts values (415552571,101,'Saving',100000.00);
insert into Accounts values (415552572,102,'Checking',50000.00);
insert into Accounts values (415552573,103,'Fixed',200000.25);
insert into Accounts values (415552574,104,'Joint',55000.50);
insert into Accounts values (415552575,105,'Money Market',80000.00);
insert into Accounts values (415552576,106,'Business AC',25000.00);
insert into Accounts values (415552577,107,'Student AC',78000.00);
insert into Accounts values (415552578,108,'RFD AC',25000.00);
insert into Accounts values (415552579,109,'Saving',400000.00);
insert into Accounts values (415552580,110,'Checking',500000.00);


select * from Accounts;

--  Trancation Table --

Create table Transactions(TransactionsID int Primary Key,Acc_id int, foreign key(Acc_id)references Accounts(AccountsID),Transaction_Date date,Amount decimal,Transaction_Type varchar(20));
insert into Transactions values (123,415552571,'2026-01-05',20000,'deposite');
insert into Transactions values (456,415552572,'2026-02-05',15000,'withdrawal');
insert into Transactions values (789,415552573,'2026-03-05',2000,'withdrawal');
insert into Transactions values (987,415552574,'2026-04-05',25000,'transfer');
insert into Transactions values (654,415552575,'2026-05-02',5000,'deposite');
insert into Transactions values (321,415552576,'2026-06-05',2500,'transfer');
insert into Transactions values (159,415552577,'2026-07-05',5000,'withdrawal');
insert into Transactions values (753,415552578,'2026-08-05',10000,'deposite');
insert into Transactions values (412,415552579,'2026-09-05',1000,'transfer');
insert into Transactions values (632,415552580,'2026-11-05',2000,'transfer');

select * from Transactions;

-- Branches Table --

Create table Branches(Branch_ID int Primary Key,Branch_Name varchar(20),Branch_Address varchar(20),Branch_Phone varchar(10));
insert into Branches values ('001','LSB Road','Mulund','022-253641');
insert into Branches values ('002','Versova','Andheri','022-689682');
insert into Branches values ('003','SV Road','Kandivali','022-898956');
insert into Branches values ('004','MG Road','Malad','022654123');
insert into Branches values ('005','MNTC Road','Bandra','022-156423');
insert into Branches values ('006','RMB Marg','Borivali','022-680689');
insert into Branches values ('007','Poisar','Kandivali','022-456879');
insert into Branches values ('008','Shimpoli','Borivali','022-789456');
insert into Branches values ('009','Charkop','Jogeshwari',022-556622);
insert into Branches values ('010','Chikuwadi','Borivali','022-489652');

select * from Branches;
-- Account Branches Table ---

Create table AC_Branches(ACC_ID int,foreign key(ACC_ID)references Accounts(AccountsID),BRN_ID int,foreign key(BRN_ID)references Branches(Branch_ID),Assignment_Date date);
alter table AC_Branches add Assignment_Date date;
insert into AC_Branches values (415552571,'001','2026-01-10');
insert into AC_Branches values (415552572,'002','2026-02-10');
insert into AC_Branches values (415552573,'003','2026-03-10');
insert into AC_Branches values (415552574,'004','2026-04-10');
insert into AC_Branches values (415552575,'005','2026-05-10');
insert into AC_Branches values (415552576,'006','2026-10-10');
insert into AC_Branches values (415552577,'007','2026-07-10');
insert into AC_Branches values (415552578,'008','2026-08-10');
insert into AC_Branches values (415552579,'009','2026-09-10');
insert into AC_Branches values (415552580,'010','2026-11-10');

drop table AC_Branches;
select * from AC_Branches;

-- Loans Table--

Create table Loans(Loan_ID int primary key,CUST_ID int,foreign key (CUST_ID)references Customer(CustomerID),Loan_Amount decimal(12,2),Interest_Rate decimal(6,2),Start_Date date,End_Date date);
insert into Loans values (1111,'101',500000.00,13.00,'2026-01-10','2030-01-10');
insert into Loans values ('2222','102',800000.50,'10.5','2026-02-10','2030-02-10');
insert into Loans values ('3333','103',200000.20,'5.5','2026-03-10','2030-03-10');
insert into Loans values ('4444','104',550000.00,12.5,'2026-04-10','2030-04-10');
insert into Loans values ('5555','105',700000.00,11.00,'2026-05-10','2030-05-10');
insert into Loans values ('6666','106',800000.00,13.5,'2026-10-10','2030-10-10');
insert into Loans values ('7777','107',1000000.50,14.5,'2026-07-10','2030-07-10');
insert into Loans values ('8888','108',6000000.60,10.5,'2026-08-10','2030-08-10');
insert into Loans values ('9999','109',2500000.10,13.5,'2026-09-10','2030-09-10');
insert into Loans values ('1010','110',300000.80,11.5,'2026-11-10','2030-11-10');

select * from Loans;

CREATE TABLE Loans (
    LoanID VARCHAR(10),
    CustomerID VARCHAR(10),
    Amount DECIMAL(12,2),
    Interest_Rate DECIMAL(5,2),
    Start_Date DATE,
    End_Date DATE
);


-- Write a query to select all transactions from the Transactions table where the Amount is greater than $500.
Select * from Transactions
WHERE Amount > 500;

-- Write a query to select all Accounts where the Balance is between $1000 and $50000 and the AccountType is 'Checking'.
select * from accounts
where balance between 1000 and 50000 
and Account_Type='Checking';

-- Write a query to select all Customers whose LastName starts with 'J'.

select * from customer
where LastName like 'j%';

-- Write a query to select AccountID and a new column AccountStatus from the Accounts table. If Balance is greater than $1000, set AccountStatus to 'Active', otherwise 'Inactive'.

select AccountsID,
CASE
when balance > 1000
then 'Active'
else 'Inactive'
end as AccountStatus
from accounts;

-- Write a query to find all Customers who have a balance in their accounts greater than the average balance of all accounts. Use a subquery to find these CustomerIDs.

select cust_id,balance
from accounts
where balance >(select AVG(balance)from accounts);

-- Write a query to get the total Balance for each AccountType. Group the results by AccountType.

select Account_Type,sum(balance) as 'Total Balance'
from accounts
group by Account_Type;

-- Write a query to get the total number of accounts for each Customer, but only include customers who have more than 2 accounts. Use the HAVING clause.

select cust_id,count(AccountsID)
from accounts
group by cust_id
having count(AccountsID)>=1;

-- Write a query to select the top 5 customers with the highest LoanAmount
select Loan_Amount
from loans
limit 5;

-- Write a query to join Transactions with Accounts to get a list of all transactions with AccountID, TransactionDate, and Amount.

select t.Acc_id,
	   t.Transaction_Date,
       t.Amount,
       ac.AccountsID
from transactions t join accounts ac
on t.Acc_id=ac.AccountsID;

-- Write a query to get a list of all Accounts and any associated Transactions. Include accounts that might not have any transactions
select a.AccountsID,
	   t.Transaction_Date,
       t.Amount
from Accounts a
left join transactions t
on a.AccountsID = t.Acc_id;


-- Write a query to get the total number of accounts for each branch. Use an INNER JOIN between AccountBranches and Branches, and group by BranchID.

select b.BRN_ID,
count(ab.ACC_ID) as 'TotalAccounts'
from ac_branches ab
inner join ac_branches b
on ab.BRN_ID=b.BRN_ID
group by b.BRN_ID;

SELECT b.BRN_ID,
       COUNT(a.ACC_ID) AS 'TotalAccounts'
FROM ac_branches ab
INNER JOIN accounts a
    ON ab.BRN_ID = ab.BRN_ID
GROUP BY ab.BRN_ID;

-- Write a query to find all Branches that manage accounts with a total balance of more than $100,000. Use a subquery in the WHERE clause to find these BranchIDs.
select * from ac_branches;

select BRN_ID from ac_branches
where BRN_ID in(select BRN_ID
                from ac_branches ab
                join accounts a
                on ab.ACC_ID=a.AccountsID
                group by BRN_ID
                having sum(balance)>100000);

-- Write a query to list FirstName, LastName, AccountID, and TransactionDate for all transactions. Use INNER JOIN and LEFT JOIN as necessary to get all required details.

select c.FirstName,
       c.LastName,
       a.AccountsID,
       t.Transaction_Date
from customer c
inner join accounts a
    on c.CustomerID = a.cust_id
left join Transactions t
    on a.AccountsID = t.Acc_id;
