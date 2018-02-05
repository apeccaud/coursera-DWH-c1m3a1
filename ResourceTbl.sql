/*
Comments :
 - CHECK constraints are not supported by MySQL. We can define them, but they do nothing (as of MySQL 5.7).
*/

CREATE TABLE ResourceTbl (
  ResNo VARCHAR(8) NOT NULL,
  ResName VARCHAR(100) NOT NULL,
  Rate DECIMAL(13, 4) NOT NULL,
  CONSTRAINT PK_ResourceTbl PRIMARY KEY (ResNo),
  CONSTRAINT CHK_Rate CHECK (Rate > 0)
);

Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R100','attendant',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R101','police',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R102','usher',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R103','nurse',20);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R104','janitor',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R105','food service',10);
