

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable VALUES ('admin' ,'admin@gmail.com' ,   3)

select * from Patient


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Dental Care' , 'Dentist treat the diseaes related to teeth')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('varunsingla@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('rksharma@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('agautam@gmail.com', 'abc',2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('haris@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('spandey@gmail.com', 'abc', 2)
/*
INSERT INTO LoginTable(Email, Password, Type) VALUES('hemant@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('smahajan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('sjasta@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('harshita@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('skansal@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('tbansal@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('msingh@gmail.com', 'abc', 2)
*/


INSERT INTO LoginTable(Email, Password, Type) VALUES('ABC@gmail.com', 'abc', 1)
 
select * from LoginTable


--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'varunsingla@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Varun Singla', '8572648260', 'Chandigarh', '4-12-1996', 'M', 1, 1000, 30000, 4.0, 0, 'MBBS', 'Cardiac Surgeon', 3, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'rksharma@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Rakesh Sharma', '9648573241', 'Chandigarh', '12-12-1996', 'M', 2, 2000, 97000, 4.6, 0, 'MD', 'Foot and Ankle Surgeon', 6, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'agautam@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Ayush Gautam', '9457834625', 'Chandigarh', '10-12-1992', 'M', 3, 2000, 120000, 5, 0, 'MBBS', 'Periodontist', 8, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'haris@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'HARIS ', '9687513972', 'Chandigarh', '05-04-1994', 'M', 4, 1500, 100000, 4.0, 0, 'MD', 'Sports Physical Therapist', 4, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'spandey@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Sahil Pandey', '9396748354', 'Chandigarh', '05-06-1993', 'M', 5, 1000, 100000, 4.7, 0, 'MD', 'Neuro-Muscular', 3, 1)
/*SELECT @ID = LoginID FROM LoginTable WHERE Email = 'hemant@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Hemant', '8057537428', 'Chandigarh', '15-08-1995', 'M', 2, 1000, 120000, 4.8, 0, 'MBBS', 'Shoulder and Elbow Surgeon', 5, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'smahajan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Saurabh Mahajan', '9994587305', 'Chandigarh', '01-04-1992', 'M', 3, 1000, 110000, 4.5, 0, 'MBBS', 'Endodontist', 4, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'sjasta@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Sonali Jasta', '7893548845', 'Chandigarh', '01-05-1996', 'F', 1, 1000, 15000, 4.0, 0, 'MD', 'Invasive Cardiologist', 2, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'harshita@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Harshita', '9684587305', 'Chandigarh', '05-08-1996', 'F', 2, 1000, 102000, 4.5, 0, 'MBBS', 'Spine Surgeon', 5, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'skansal@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Samiksha Kansal', '8696459537', 'Chandigarh', '18-03-1996', 'F', 3, 1000, 15000, 4.1, 0, 'MBBS', 'Oral Surgeon', 2, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'tbansal@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Tamanna Bansal', '9694685693', 'Chandigarh', '06-09-1995', 'F', 4, 1000, 15000, 4.8, 0, 'MD', 'Pediatric Physical Therapist', 5, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'msingh@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Mannat Singh', '9979568479', 'Chandigarh', '18-11-1996', 'F', 5, 1000, 15000, 4.4, 0, 'MBBS', 'Neuro-Oncology', 3, 1)*/






select * from Doctor


--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'ABC', '6984575309', 'Chandigarh', '04-08-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'DEF', '9056793561', 'Chandigarh', '24-04-2002', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='XYZ@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'XYZ', '7569250718', 'Chandigarh', '14-06-2000', 'M')

select * from OtherStaff

insert into OtherStaff values ('Amit', '9578634067','Chandigarh', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Parveen', '7862539461','Chandigarh', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Dinesh', '8478395713','IChandigarh', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Vijay', '8734587638','Chandigarh', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Vinit', '6788456836','Chandigarh', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Anil', '9836573737','Chandigarh', 'Guard', 'M', '05-04-1990', 'Matric',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working



select * from LoginTable