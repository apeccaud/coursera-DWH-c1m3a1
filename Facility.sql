CREATE TABLE Facility (
  FacNo VARCHAR(8) NOT NULL,
  FacName VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Facility PRIMARY KEY (FacNo)
);

Insert into FACILITY (FACNO,FACNAME) values ('F100','Football stadium');
Insert into FACILITY (FACNO,FACNAME) values ('F101','Basketball arena');
Insert into FACILITY (FACNO,FACNAME) values ('F102','Baseball field');
Insert into FACILITY (FACNO,FACNAME) values ('F103','Recreation room');
