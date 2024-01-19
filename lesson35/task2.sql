use company;

CREATE TABLE IF NOT EXISTS departments (
	id_department INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(45) NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS positions (
	id_position INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position VARCHAR(45) NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS employees (
    id_employee INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    id_department INT,
    id_position INT,
    id_manager INT,
    FOREIGN KEY (id_department) REFERENCES departments(id_department) 
		ON DELETE SET NULL 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_position) REFERENCES positions(id_position) 
		ON DELETE SET NULL 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_manager) REFERENCES employees(id_employee) 
		ON DELETE SET NULL 
        ON UPDATE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
