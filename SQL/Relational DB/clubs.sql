DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS clubs;
DROP TABLE IF EXISTS membership;


CREATE TABLE  students (
  name varchar(32) NOT NULL,
  s_id varchar(40) NOT NULL,
  grad_date varchar(32) NOT NULL,
  start_date varchar(32) NOT NULL,
  mobile varchar(32) NOT NULL,
  email varchar(32) NOT NULL,
  

  
  PRIMARY KEY(s_id)
  
  
  );
#TYPE = INNODB;


INSERT INTO students VALUES ("SAM", "N16963918","2019-04-23","2015-03-16","646-434-9805","pas502@nyu.edu");
INSERT INTO students VALUES ("Michael", "N16963920","2020-04-23","2016-03-16","730-434-9805","mc234@nyu.edu");
INSERT INTO students VALUES ("Rachel", "N16963021","2018-04-23","2014-03-16","946-434-9805","rc546@nyu.edu");
INSERT INTO students VALUES ("James", "N16963022","2019-04-23","2015-03-16","990-434-9805","jm946@nyu.edu");


#INSERT INTO books VALUES ("Calculus and Application", "Mayor,John",78,"Cengage",2015,400,"ISBN Cal","English");



CREATE TABLE clubs (
  c_id varchar(32) NOT NULL,
  name varchar(32) NOT NULL,
  department varchar(32) NOT NULL,
  dues int(32) default 0,
  president varchar(32) NOT NULL,
  secretary varchar(32) NOT NULL,
  treasurer varchar(32) NOT NULL,
  venue varchar(32) NOT NULL,
  url varchar(32) NOT NULL,
  email varchar(32) NOT NULL,

  PRIMARY KEY(c_id)
  


);
INSERT INTO clubs VALUES ("P000", "Programming","Computer Science",15,"Bill","James","Ellen","402","www.programming.com","p@nyu.edu");
INSERT INTO clubs VALUES ("A000", "Acting","Tisch",35,"Jasmine","Mike","Ana","553","www.acting.com","a@nyu.edu");
INSERT INTO clubs VALUES ("D000", "Drum","Music",25,"Paul","Tyson","Ana","402","www.drum.com","d@nyu.edu");


CREATE TABLE membership(
member_id varchar(32) NOT NULL,
stduent_id varchar(32) NOT NULL,
club_id varchar(32) NOT NULL,
date_join varchar(32) NOT NULL,
date_left varchar(32) NOT NULL,

PRIMARY KEY (member_id),
FOREIGN KEY(student_id) REFERENCES students(s_id),
FOREIGN KEY (club_id) REFERENCES clubs (c_id)

);

INSERT INTO membership VALUES ("s01", "N16963918","P000", "2016-05-22", "2017-05-22");
INSERT INTO membership VALUES ("a01", "N16963918","A000", "2015-05-22", "PRESENT");
INSERT INTO membership VALUES ("d01", "N16963918"," 0", "2016-05-25", "2018-05-22");
INSERT INTO membership VALUES ("m01", "N16963920","P000", "2016-05-22", "2017-05-22");
INSERT INTO membership VALUES ("j01", "N16963022","D000", "2015-05-22", "PRESENT");
