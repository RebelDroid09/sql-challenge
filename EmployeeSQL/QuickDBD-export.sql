-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Titles" (
    "title_id" string   NOT NULL,
    "title" string   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "emp_title" string   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "sex" char   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Table documentation comment 2
CREATE TABLE "DeptManager" (
    "dept_no" string   NOT NULL,
    -- Field documentation comment 1
    -- Field documentation comment 2
    -- Field documentation comment 3
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_DeptManager" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "DeptEmp" (
    -- Field documentation comment 3
    "emp_no" int   NOT NULL,
    "dept_no" string   NOT NULL,
    CONSTRAINT "pk_DeptEmp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" string   NOT NULL,
    "dept_name" string   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "Titles" ("title_id");

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

