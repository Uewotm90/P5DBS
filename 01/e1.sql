CREATE SEQUENCE SIDNUM START 1;
CREATE TABLE Student (
    sid int PRIMARY KEY DEFAULT nextval('SIDNUM'),
    fname VARCHAR(20),
    lname VARCHAR(20),
    semester int,
    birthdate date
);
CREATE SEQUENCE TIDNUM START 1;
CREATE TABLE Tutor (
  tid int PRIMARY KEY DEFAULT  nextval('TIDNUM'),
  fname VARCHAR(20),
  lname VARCHAR(20),
  issenior boolean
);
CREATE SEQUENCE GIDNUM START 1;
CREATE TABLE Studygroup (
    gid int PRIMARY KEY DEFAULT nextval('GIDNUM'),
    tid int,
    weekday varchar(10),
    room varchar(10),
    starttime time,
    FOREIGN KEY(tid) REFERENCES Tutor(tid)
);
CREATE TABLE Handsin(
    sid int PRIMARY KEY,
    eid int,
    "achieved-points" int,
    FOREIGN KEY(sid) REFERENCES Student(sid)
);
CREATE TABLE Member(
    sid int PRIMARY KEY,
    gid int,
    FOREIGN KEY(sid) REFERENCES Student(sid),
    FOREIGN KEY(gid) REFERENCES Studygroup(gid)
);

