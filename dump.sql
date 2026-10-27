
--
-- Table structure for table 'teachers'
--

CREATE TABLE IF NOT EXISTS teachers (
  teacher_id serial,
  name varchar(100) NOT NULL,
  pay int NOT NULL,
  PRIMARY KEY (teacher_id)
);

--
-- Dumping data for table 'teachers'
--

INSERT INTO teachers (name, pay) VALUES
('Oskar Florek', 1800),
('Lilianna Kwiecińska', 2000),
('Brajan Kubik', 2200),
('Klara Dąbkowską', 1800),
('Zachariasz Zaręba', 2000);


--
-- Table structure for table 'classes'
--

CREATE TABLE IF NOT EXISTS classes (
  class_id serial,
  name varchar(100) NOT NULL,
  main_teacher_id serial,
  PRIMARY KEY (class_id),
  FOREIGN KEY (main_teacher_id) REFERENCES teachers(teacher_id)
);

--
-- Dumping data for table 'classes'
--

INSERT INTO classes (name, main_teacher_id) VALUES
('IV A', 1),
('V B', 2),
('VI C', 3),
('VII A', 4),
('VIII B', 5);


--
-- Table structure for table 'students'
--

CREATE TABLE IF NOT EXISTS students (
  student_id serial,
  name varchar(100) NOT NULL,
  surname varchar(100) NOT NULL,
  email varchar(150) NOT NULL,
  class_id serial,
  PRIMARY KEY (student_id),
  FOREIGN KEY (class_id) REFERENCES classes(class_id)
) ;

--
-- Dumping data for table 'students'
--

INSERT INTO students (name, surname, email, class_id) VALUES
('Bertram', 'Adamiak', 'bertram.adamiak@yahoo.com', 1),
('Rachela', 'Kosowska', 'rachela.kosowska@gmail.com', 1),
('Damian', 'Laskowski', 'damian.laskowski@gmail.com', 1),
('Aurora', 'Zielonka', 'aurora.zielonka@yahoo.com', 2),
('Alan', 'Drozdowski', 'alan.drozdowski@gmail.com', 2),
('Brygida', 'Szczepańska', 'brygida.szczepanska@gmail.com', 3),
('Angela', 'Kuś', 'angela.kus@hotmail.com', 3),
('Korneli', 'Kujawa', 'korneli.kujawa@gmail.com', 3),
('Reginald', 'Skoczylas', 'reginald.skoczylas@hotmail.com', 4),
('Oskar', 'Szczepański', 'oskar.szczepanski@yahoo.com', 4),
('Walenty', 'Fijałkowski', 'walenty.fijalkowski@yahoo.com', 4),
('Ksenia', 'Janiszewska', 'ksenia.janiszewska@gmail.com', 4),
('Joanna', 'Jóźwiak', 'joanna.jozwiak@gmail.com', 4),
('Kwintyn', 'Dec', 'kwintyn.dec@hotmail.com', 4),
('Władysław', 'Stasiak', 'wladyslaw.stasiak@gmail.com', 5),
('Beniamin', 'Jagiełło', 'beniamin.jagiello@hotmail.com', 5),
('Alfred', 'Ciesielski', 'alfred.ciesielski@hotmail.com', 5),
('Szymon', 'Burzyński', 'szymon.burzynski@hotmail.com', 5),
('Bruno', 'Trojanowski', 'bruno.trojanowski@gmail.com', 5),
('Klaudiusz', 'Kalisz', 'klaudiusz.kalisz@gmail.com', 5);


--
-- Table structure for table 'marks'
--

CREATE TABLE IF NOT EXISTS marks (
  mark_id serial,
  mark int NOT NULL,
  teacher_id serial,
  student_id serial,
  PRIMARY KEY (mark_id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

--
-- Dumping data for table 'marks'
--

INSERT INTO marks (mark_id, mark, teacher_id, student_id) VALUES
(1, 6, 2, 2),
(2, 2, 2, 4),
(3, 6, 5, 19),
(4, 3, 4, 4),
(5, 3, 3, 6),
(6, 2, 4, 15),
(7, 6, 4, 8),
(8, 1, 5, 5),
(9, 5, 2, 3),
(10, 6, 2, 7),
(11, 2, 2, 1),
(12, 4, 2, 5),
(13, 6, 5, 19),
(14, 4, 4, 4),
(15, 3, 3, 7),
(16, 6, 5, 3),
(17, 3, 1, 14),
(18, 4, 5, 18),
(19, 2, 1, 16),
(20, 4, 5, 19),
(21, 5, 4, 1),
(22, 5, 3, 3),
(23, 2, 1, 5),
(24, 3, 4, 2),
(25, 4, 3, 12),
(26, 3, 1, 5),
(27, 3, 2, 10),
(28, 5, 5, 16),
(29, 5, 1, 20),
(30, 5, 2, 8),
(31, 3, 5, 6),
(32, 1, 5, 8),
(33, 4, 3, 15),
(34, 3, 3, 7),
(35, 3, 4, 15),
(36, 6, 3, 20),
(37, 2, 1, 11),
(38, 4, 3, 16),
(39, 3, 3, 9),
(40, 3, 1, 19),
(41, 3, 1, 10),
(42, 5, 5, 6),
(43, 4, 5, 4),
(44, 1, 4, 17),
(45, 3, 2, 8),
(46, 2, 1, 14),
(47, 5, 4, 1),
(48, 5, 1, 2),
(49, 4, 4, 12),
(50, 3, 2, 9),
(51, 6, 2, 8),
(52, 6, 2, 8),
(53, 2, 3, 9),
(54, 4, 4, 10),
(55, 5, 2, 18),
(56, 6, 1, 11),
(57, 5, 5, 9),
(58, 6, 3, 16),
(59, 5, 4, 13),
(60, 3, 2, 7),
(61, 2, 3, 9),
(62, 2, 1, 12),
(63, 2, 3, 2),
(64, 6, 5, 18),
(65, 4, 2, 20),
(66, 3, 2, 13),
(67, 4, 4, 6),
(68, 3, 5, 7),
(69, 4, 4, 1),
(70, 4, 4, 12),
(71, 3, 3, 18),
(72, 4, 5, 15),
(73, 2, 1, 4),
(74, 2, 3, 19),
(75, 1, 4, 20),
(76, 1, 3, 7),
(77, 4, 4, 9),
(78, 5, 1, 17),
(79, 6, 3, 13),
(80, 4, 3, 3),
(81, 2, 5, 20),
(82, 2, 1, 1),
(83, 2, 4, 4),
(84, 5, 3, 2),
(85, 5, 4, 17),
(86, 4, 5, 17),
(87, 2, 2, 9),
(88, 6, 1, 6),
(89, 6, 2, 16),
(90, 4, 5, 10),
(91, 5, 4, 16),
(92, 5, 4, 15),
(93, 1, 5, 13),
(94, 6, 1, 14),
(95, 5, 2, 19),
(96, 4, 5, 20),
(97, 6, 1, 13),
(98, 5, 1, 18),
(99, 1, 5, 18),
(100, 4, 1, 11);
