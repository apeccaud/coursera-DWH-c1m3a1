/*
Comments :
 - CHECK constraints are not supported by MySQL. We can define them, but they do nothing (as of MySQL 5.7).
*/

CREATE TABLE EventPlanLine (
  PlanNo VARCHAR(8) NOT NULL,
  LineNo VARCHAR(8) NOT NULL,
  TimeStart DATETIME NOT NULL,
  TimeEnd DATETIME NOT NULL,
  NumberFld INT(2) UNSIGNED NOT NULL,
  LocNo VARCHAR(8) NOT NULL,
  ResNo VARCHAR(8) NOT NULL,
  CONSTRAINT PK_EventPlanLine PRIMARY KEY (PlanNo, LineNo),
  CONSTRAINT FK_EventPlanLine_PlanNo FOREIGN KEY (PlanNo) REFERENCES EventPlan(PlanNo),
  CONSTRAINT FK_EventPlanLine_LocNo FOREIGN KEY (LocNo) REFERENCES Location(LocNo),
  CONSTRAINT FK_EventPlanLine_ResNo FOREIGN KEY (ResNo) REFERENCES ResourceTbl(ResNo),
  CONSTRAINT CHK_EventPlanLine_TimeStart_Smaller_Than_TimeEnd CHECK (TimeStart < TimeEnd)
);

Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P100',1, str_to_date('25,OCT,13 8:00:00','%d,%b,%y %H:%i:%s'), str_to_date('25,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),2,'L100','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P100',2, str_to_date('25,OCT,13 12:00:00','%d,%b,%y %H:%i:%s'),str_to_date('25,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'), 2,'L101','R101');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P100',3, str_to_date('25,OCT,13 7:00:00','%d,%b,%y %H:%i:%s'), str_to_date('25,OCT,13 16:30:00','%d,%b,%y %H:%i:%s'), 1,'L102','R102');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P100',4, str_to_date('25,OCT,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('25,OCT,13 22:00:00','%d,%b,%y %H:%i:%s'),2,'L100','R102');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P101',1, str_to_date('3,DEC,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('3,DEC,13 20:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P101',2, str_to_date('3,DEC,13 18:30:00','%d,%b,%y %H:%i:%s'),str_to_date('3,DEC,13 19:00:00','%d,%b,%y %H:%i:%s'),4,'L105','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P101',3, str_to_date('3,DEC,13 19:00:00','%d,%b,%y %H:%i:%s'),str_to_date('3,DEC,13 20:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R103');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P102',1, str_to_date('5,DEC,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('5,DEC,13 19:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P102',2, str_to_date('5,DEC,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('5,DEC,13 21:00:00','%d,%b,%y %H:%i:%s'),4,'L105','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P102',3, str_to_date('5,DEC,13 19:00:00','%d,%b,%y %H:%i:%s'),str_to_date('5,DEC,13 22:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R103');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P103',1, str_to_date('12,DEC,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('12,DEC,13 21:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P103',2, str_to_date('12,DEC,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('12,DEC,13 21:00:00','%d,%b,%y %H:%i:%s'),4,'L105','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P103',3, str_to_date('12,DEC,13 19:00:00','%d,%b,%y %H:%i:%s'),str_to_date('12,DEC,13 22:00:00','%d,%b,%y %H:%i:%s'),2,'L103','R103');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P104',1, str_to_date('26,OCT,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('26,OCT,13 22:00:00','%d,%b,%y %H:%i:%s'),4,'L101','R104');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P104',2, str_to_date('26,OCT,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('26,OCT,13 22:00:00','%d,%b,%y %H:%i:%s'),4,'L100','R104');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P105',1, str_to_date('25,OCT,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('25,OCT,13 22:00:00','%d,%b,%y %H:%i:%s'),4,'L101','R104');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P105',2, str_to_date('25,OCT,13 18:00:00','%d,%b,%y %H:%i:%s'),str_to_date('25,OCT,13 22:00:00','%d,%b,%y %H:%i:%s'),4,'L100','R104');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P199',1, str_to_date('10,DEC,13 8:00:00','%d,%b,%y %H:%i:%s'), str_to_date('10,DEC,13 12:00:00','%d,%b,%y %H:%i:%s'),1,'L100','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P349',1, str_to_date('12,DEC,13 12:00:00','%d,%b,%y %H:%i:%s'),str_to_date('12,DEC,13 15:30:00','%d,%b,%y %H:%i:%s'),1,'L103','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P85',1,  str_to_date('25,OCT,13 9:00:00','%d,%b,%y %H:%i:%s'), str_to_date('25,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),5,'L100','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P85',2,  str_to_date('25,OCT,13 8:00:00','%d,%b,%y %H:%i:%s'), str_to_date('25,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),2,'L102','R101');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P85',3, str_to_date('25,OCT,13 10:00:00','%d,%b,%y %H:%i:%s'), str_to_date('25,OCT,13 15:00:00','%d,%b,%y %H:%i:%s'),3,'L104','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P95',1, str_to_date('26,OCT,13 8:00:00','%d,%b,%y %H:%i:%s'),  str_to_date('26,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),4,'L100','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P95',2, str_to_date('26,OCT,13 9:00:00','%d,%b,%y %H:%i:%s'),  str_to_date('26,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),4,'L102','R101');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P95',3, str_to_date('26,OCT,13 10:00:00','%d,%b,%y %H:%i:%s'), str_to_date('26,OCT,13 15:00:00','%d,%b,%y %H:%i:%s'),4,'L106','R100');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P95',4, str_to_date('26,OCT,13 13:00:00','%d,%b,%y %H:%i:%s'), str_to_date('26,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),2,'L100','R103');
Insert into EVENTPLANLINE (PLANNO,LINENO,TIMESTART,TIMEEND,NUMBERFLD,LOCNO,RESNO) values ('P95',5, str_to_date('26,OCT,13 13:00:00','%d,%b,%y %H:%i:%s'), str_to_date('26,OCT,13 17:00:00','%d,%b,%y %H:%i:%s'),2,'L101','R104');
