/*
Comments :
 - CHECK constraints are not supported by MySQL. We can define them, but they do nothing (as of MySQL 5.7).
*/

CREATE TABLE EventRequest (
  EventNo VARCHAR(8) NOT NULL,
  DateHeld DATE NOT NULL,
  DateReq DATE NOT NULL,
  FacNo VARCHAR(8) NOT NULL,
  CustNo VARCHAR(8) NOT NULL,
  DateAuth DATE,
  Status VARCHAR(30) NOT NULL,
  EstCost DECIMAL(13, 4) NOT NULL,
  EstAudience INT(10) UNSIGNED NOT NULL,
  BudNo VARCHAR(8),
  CONSTRAINT PK_EventRequest PRIMARY KEY (EventNo),
  CONSTRAINT FK_EventRequest_CustNo FOREIGN KEY (CustNo) REFERENCES Customer(CustNo),
  CONSTRAINT FK_EventRequest_FacNo FOREIGN KEY (FacNo) REFERENCES Facility(FacNo),
  CONSTRAINT CHK_Status CHECK (Status IN ('Pending', 'Denied', 'Approved')),
  CONSTRAINT CHK_EstAudience CHECK (EstAudience > 0)
);

Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E100',str_to_date('25,OCT,13','%d,%b,%y'),str_to_date('06,JUN,13','%d,%b,%y'),'C100','F100',str_to_date('08,JUN,13','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E101',str_to_date('26,OCT,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C100','F100',null,'Pending',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E103',str_to_date('21,SEP,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C100','F100',str_to_date('01,AUG,13','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E102',str_to_date('14,SEP,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C100','F100',str_to_date('31,JUL,13','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E104',str_to_date('03,DEC,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C101','F101',str_to_date('31,JUL,13','%d,%b,%y'),'Approved',2000,12000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E105',str_to_date('05,DEC,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C101','F101',str_to_date('01,AUG,13','%d,%b,%y'),'Approved',2000,10000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E106',str_to_date('12,DEC,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C101','F101',str_to_date('31,JUL,13','%d,%b,%y'),'Approved',2000,10000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,STATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E107',str_to_date('23,NOV,13','%d,%b,%y'),str_to_date('28,JUL,13','%d,%b,%y'),'C105','F100',str_to_date('31,JUL,13','%d,%b,%y'),'Denied',10000,5000,null);
