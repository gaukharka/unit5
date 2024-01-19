CREATE TABLE IF NOT EXISTS course_groups (
    id_group INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS students (
    id_student INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    id_group INT,
    FOREIGN KEY (id_group) REFERENCES course_groups(id_group) 
		ON DELETE SET NULL 
        ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS subjects (
    id_subject INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS lesson_plans (
    id_lesson INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_subject INT,
    lesson_date DATE NOT NULL,
    FOREIGN KEY (id_subject) REFERENCES subjects(id_subject) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS group_lessons (
    id_lesson INT,
    id_group INT,
    PRIMARY KEY (id_lesson, id_group),
    FOREIGN KEY (id_lesson) REFERENCES lesson_plans(id_lesson) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_group) REFERENCES course_groups(id_group) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS student_attendance (
    id_attendance INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_student INT,
    id_lesson INT,
    is_present BOOLEAN NOT NULL,
    FOREIGN KEY (id_student) REFERENCES students(id_student) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_lesson) REFERENCES lesson_plans(id_lesson) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE
);

