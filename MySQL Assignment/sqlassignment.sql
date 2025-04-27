
use assignment;

create table company
(
companyID int primary key ,
companyName varchar(45),
street varchar(45),
city varchar(45),
state varchar(45),
zip varchar(45)
);

create table contact
(
contactID int,
companyId int,
companyName varchar(45),
firstName varchar(45),
lastName varchar(45),
street varchar(45),
city varchar(45),
state varchar(45),
zip varchar(45),
isMain boolean,
email varchar(45),
phoneNo int,
foreign key (companyId) references company(companyID)
);

create table contactEmployee
(
contactEmployeeID int,
contactID int,
employeeID int,
contactDate date,
description varchar(45),
foreign key (contactID) references contact(contactID)
);

create table employee
(
employeeID int,
firstName varchar(45),
lastName varchar(45),
salary decimal,
hireDate date,
jobTitle varchar(45),
email varchar(45),
phoneNO varchar(45),
foreign key(employeeID) references contactEmployee(employeeID)
);





INSERT INTO company (companyid, companyname, street, city, state, zip)
VALUES
(1, 'ABC Inc.', '123 Main St', 'New York', 'NY', '10001'),
(2, 'XYZ Corp.', '456 Elm St', 'Los Angeles', 'CA', '90001'),
(3, 'PQR Ltd.', '789 Oak St', 'Chicago', 'IL', '60601'),
(4, 'MNO Inc.', '321 Maple St', 'Houston', 'TX', '77001'),
(5, 'JKL Corp.', '901 Broadway', 'Seattle', 'WA', '98101'),
(6, 'DEF Inc.', '234 Pine St', 'Boston', 'MA', '02101'),
(7, 'GHI Ltd.', '567 Cedar St', 'Denver', 'CO', '80201'),
(8, 'STU Inc.', '890 Walnut St', 'Dallas', 'TX', '75201'),
(9, 'VWX Corp.', '345 Spruce St', 'San Francisco', 'CA', '94101'),
(10, 'BCD Inc.', '678 Fir St', 'Miami', 'FL', '33101'),
(11, 'EFG Ltd.', '901 Ash St', 'Washington', 'DC', '20001'),
(12, 'HIJ Corp.', '234 Beech St', 'Atlanta', 'GA', '30301'),
(13, 'KLM Inc.', '567 Cypress St', 'Minneapolis', 'MN', '55401'),
(14, 'NOP Ltd.', '890 Cherry St', 'Phoenix', 'AZ', '85001'),
(15, 'QRS Inc.', '123 Orange St', 'Philadelphia', 'PA', '19101'),
(16, 'TUV Corp.', '456 Lemon St', 'Detroit', 'MI', '48201'),
(17, 'WXY Inc.', '789 Grape St', 'San Diego', 'CA', '92101'),
(18, 'ZAB Ltd.', '901 Peach St', 'Portland', 'OR', '97201'),
(19, 'CDE Corp.', '234 Plum St', 'Memphis', 'TN', '38101'),
(20, 'FGH Inc.', '567 Pear St', 'Baltimore', 'MD', '21201');


INSERT INTO company (companyid, companyname, street, city, state, zip)
VALUES
(21, 'Urban Outfitters, Inc.', '123 S 13th St', 'Philadelphia', 'PA', '19107');





INSERT INTO contact (contactid, companyid, firstname, lastname, street, city, state, zip, ismain, email, phoneNo,companyName)
VALUES
(1, 1, 'John', 'Doe', '123 Main St', 'New York', 'NY', '10001', TRUE, 'john.doe@example.com', '123-456-7890','GreenTech Inc.'
),                                 
(2, 1, 'Jane', 'Smith', '123 Main St', 'New York', 'NY', '10001', FALSE, 'jane.smith@example.com', '987-654-3210','NovaCorp'
),
(3, 2, 'Bob', 'Johnson', '456 Elm St', 'Los Angeles', 'CA', '90001', TRUE, 'bob.johnson@example.com', '555-123-4567','Futura Enterprises'
),
(4, 3, 'Alice', 'Williams', '789 Oak St', 'Chicago', 'IL', '60601', TRUE, 'alice.williams@example.com', '444-567-8901','Apex Solutions'
),
(5, 4, 'Mike', 'Davis', '321 Maple St', 'Houston', 'TX', '77001', TRUE, 'mike.davis@example.com', '333-901-2345','Pulse Dynamics'
),
(6, 5, 'Emily', 'Miller', '901 Broadway', 'Seattle', 'WA', '98101', TRUE, 'emily.miller@example.com', '222-111-4444','Crescent Innovations'
),
(7, 6, 'Sarah', 'Taylor', '234 Pine St', 'Boston', 'MA', '02101', TRUE, 'sarah.taylor@example.com', '666-777-8888','OmniCorp'
),
(8, 7, 'David', 'Brown', '567 Cedar St', 'Denver', 'CO', '80201', TRUE, 'david.brown@example.com', '888-999-0000','Evolve Systems'
),
(9, 8, 'Kevin', 'White', '890 Walnut St', 'Dallas', 'TX', '75201', TRUE, 'kevin.white@example.com', '111-222-3333','Lumina Technologies'
),
(10, 9, 'Lisa', 'Martin', '345 Spruce St', 'San Francisco', 'CA', '94101', TRUE, 'lisa.martin@example.com', '444-555-6666','Aurora Ventures'
),
(11, 10, 'Peter', 'Harris', '678 Fir St', 'Miami', 'FL', '33101', TRUE, 'peter.harris@example.com', '777-888-9999','Proxima Solutions'
),
(12, 11, 'Jessica', 'Thompson', '901 Ash St', 'Washington', 'DC', '20001', TRUE, 'jessica.thompson@example.com', '999-000-1111','Zephyr Industries'
),
(13, 12, 'Michael', 'Jackson', '234 Beech St', 'Atlanta', 'GA', '30301', TRUE, 'michael.jackson@example.com', '222-333-4444','Nexus Enterprises'
),
(14, 13, 'Jennifer', 'Garcia', '567 Cypress St', 'Minneapolis', 'MN', '55401', TRUE, 'jennifer.garcia@example.com', '555-666-7777','Fusion Dynamics'
),
(15, 14, 'William', 'Martinez', '890 Cherry St', 'Phoenix', 'AZ', '85001', TRUE, 'william.martinez@example.com', '888-999-0000','Spectra Innovations'
),
(16, 15, 'Elizabeth', 'Robinson', '123 Orange St', 'Philadelphia', 'PA', '19101', TRUE, 'elizabeth.robinson@example.com', '111-222-3333','Apexion Corp'
),
(17, 16, 'James', 'Clark', '456 Lemon St', 'Detroit', 'MI', '48201', TRUE, 'james.clark@example.com', '444-555-6666','Eon Systems'
),
(18, 17, 'Margaret', 'Rodriguez', '789 Grape St', 'San Diego', 'CA', '92101', TRUE, 'margaret.rodriguez@example.com', '777-888-9999','Pinnacle Technologies'
),
(19, 18, 'Robert', 'Lewis', '901 Peach St', 'Portland', 'OR', '97201', TRUE, 'robert.lewis@example.com', '999-000-1111','Catalyst Ventures'
),
(20, 19, 'Patricia', 'Lee', '234 Plum St', 'Memphis', 'TN', '38101', TRUE, 'patricia.lee@example.com', '222-333-4444','Genesis Solutions'
);
INSERT INTO contact (contactid, companyid, firstname, lastname, street, city, state, zip, ismain, email, phoneno,companyname)
VALUES
(21, 1, 'Dianne', 'Connor', '456 Elm St', 'New York', 'NY', '10001', TRUE, 'dianne.connor@example.com', '123-456-7890','xyz1'),
(22, 1, 'Jack', 'Lee', '789 Oak St', 'Los Angeles', 'CA', '90001', FALSE, 'jack.lee@example.com', '987-654-3210','xyz2');


INSERT INTO contactemployee (contactemployeeid, contactID , employeeid, contactdate, description)
VALUES
(1, 1, 101, '2022-01-01', 'Meeting to discuss project proposal'),
(2, 1, 102, '2022-01-15', 'Follow-up call to confirm project details'),
(3, 2, 103, '2022-02-01', 'Initial consultation to discuss client needs'),
(4, 3, 104, '2022-03-01', 'Project kickoff meeting'),
(5, 4, 105, '2022-04-01', 'Progress update meeting'),
(6, 5, 106, '2022-05-01', 'Client satisfaction survey'),
(7, 6, 107, '2022-06-01', 'Project completion meeting'),
(8, 7, 108, '2022-07-01', 'Follow-up call to ensure client satisfaction'),
(9, 8, 109, '2022-08-01', 'Meeting to discuss new project proposal'),
(10, 9, 110, '2022-09-01', 'Project planning meeting'),
(11, 10, 111, '2022-10-01', 'Progress update call'),
(12, 11, 112, '2022-11-01', 'Client feedback meeting'),
(13, 12, 113, '2022-12-01', 'Year-end review meeting'),
(14, 13, 114, '2023-01-01', 'New year kickoff meeting'),
(15, 14, 115, '2023-02-01', 'Project status update'),
(16, 15, 116, '2023-03-01', 'Client appreciation meeting'),
(17, 1, 101, '2023-04-01', 'Project review meeting'),
(18, 2, 103, '2023-05-01', 'Client satisfaction survey'),
(19, 3, 104, '2023-06-01', 'Project completion meeting'),
(20, 4, 105, '2023-07-01', 'Follow-up call to ensure client satisfaction');


INSERT INTO employee (employeeid, firstname, lastname, salary, hiredate, jobtitle, email, phoneno)
VALUES
(101, 'John', 'Doe', 50000.00, '2020-01-01', 'Software Engineer', 'john.doe@example.com', '123-456-7890'),
(102, 'Jane', 'Smith', 60000.00, '2019-06-01', 'Data Scientist', 'jane.smith@example.com', '987-654-3210'),
(103, 'Bob', 'Johnson', 70000.00, '2018-03-01', 'Product Manager', 'bob.johnson@example.com', '555-123-4567'),
(104, 'Alice', 'Williams', 55000.00, '2020-09-01', 'UX Designer', 'alice.williams@example.com', '444-567-8901'),
(105, 'Mike', 'Davis', 65000.00, '2019-12-01', 'DevOps Engineer', 'mike.davis@example.com', '333-901-2345'),
(106, 'Emily', 'Miller', 58000.00, '2020-06-01', 'Quality Assurance', 'emily.miller@example.com', '222-111-4444'),
(107, 'David', 'Brown', 62000.00, '2019-03-01', 'Business Analyst', 'david.brown@example.com', '666-777-8888'),
(108, 'Sarah', 'Taylor', 50000.00, '2020-03-01', 'Junior Developer', 'sarah.taylor@example.com', '888-999-0000'),
(109, 'Kevin', 'White', 68000.00, '2018-09-01', 'Solutions Architect', 'kevin.white@example.com', '111-222-3333'),
(110, 'Lisa', 'Martin', 59000.00, '2020-12-01', 'Technical Writer', 'lisa.martin@example.com', '444-555-6666'),
(111, 'Peter', 'Harris', 63000.00, '2019-09-01', 'Database Administrator', 'peter.harris@example.com', '777-888-9999'),
(112, 'Jessica', 'Thompson', 56000.00, '2020-06-01', 'Marketing Specialist', 'jessica.thompson@example.com', '999-000-1111'),
(113, 'Michael', 'Jackson', 69000.00, '2018-06-01', 'IT Manager', 'michael.jackson@example.com', '222-333-4444'),
(114, 'Jennifer', 'Garcia', 57000.00, '2020-09-01', 'HR Generalist', 'jennifer.garcia@example.com', '555-666-7777'),
(115, 'William', 'Martinez', 64000.00, '2019-12-01', 'Network Administrator', 'william.martinez@example.com', '888-999-0000'),
(116, 'Elizabeth', 'Robinson', 51000.00, '2020-03-01', 'Customer Support', 'elizabeth.robinson@example.com', '111-222-3333'),
(111, 'James', 'Clark', 66000.00, '2019-06-01', 'Sales Representative', 'james.clark@example.com', '444-555-6666'),
(113, 'Margaret', 'Rodriguez', 54000.00, '2020-06-01', 'Graphic Designer', 'margaret.rodriguez@example.com', '777-888-9999'),
(115, 'Robert', 'Lewis', 67000.00, '2018-12-01', 'Cybersecurity Specialist', 'robert.lewis@example.com', '999-000-1111'),
(116, 'Patricia', 'Lee', 52000.00, '2020-09-01', 'Administrative Assistant', 'patricia.lee@example.com', '222-333-4444');


INSERT INTO employee (employeeid, firstname, lastname, salary, hiredate, jobtitle, email, phoneno)
VALUES
(115, 'Lesley', 'Bland', 53000.00, '2021-01-01', 'Marketing Manager', 'lesley.bland@example.com', '901-234-5678');

update employee  set phoneno= "215-555-8800" where firstname='Lesley' and  lastname='Bland';

update company set companyName="Urban Outfitters" where companyName="Urban Outfitters, Inc.";

delete from contact where contactID=22 or contactID=22;








