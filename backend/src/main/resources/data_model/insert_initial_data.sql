INSERT INTO department (id, name, location) VALUES
(1, 'Design Department', 'New York'),
(2, 'Engineering Department', 'San Francisco'),
(3, 'HR', 'Berlin');

INSERT INTO employee (
    id, address, email, employee_code, image_url, job_title, name, phone,
    department_id, date_of_birth, hire_date, is_active, created_at, updated_at,
    identification_number, emergency_contact_name, emergency_contact_phone,
    emergency_contact_relationship, education_level, nationality, marital_status,
    contract_type, job_level, supervisor_name, supervisor_email, work_location,
    bank_account_number, tax_id_number, social_security_number,
    employment_status, termination_date, notes
) VALUES
(
    1, '123 Main St', 'emma.mai@gmail.com', '2338889c-cac7-489f-8179-74e47bbd963e',
    'https://bootdey.com/img/Content/avatar/avatar7.png', 'Graphics Designer', 'Emma A. Main',
    '000123456', 1, '1980-01-01', '2020-01-01', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,
    'ID-001', 'John Doe', '123456789', 'Friend', 'Bachelor', 'American', 'Single',
    'Full-Time', 'Junior', 'Jane Supervisor', 'jane.supervisor@example.com',
    'Office 101', '1234567890', 'TAX123456', 'SSN123456', 'Active', NULL, 'Sample employee'
),
(
    2, '456 2nd Ave', 'bob@example.com', 'EMP002',
    NULL, 'QA Engineer', 'Bob Johnson',
    '123-456-7891', 1, '1985-02-15', '2021-03-01', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,
    'ID-002', 'Alice Johnson', '321-654-0988', 'Sister', 'Master', 'Canadian', 'Married',
    'Contractor', 'Level 2', 'Sarah Manager', 'sarah.manager@example.com',
    'Remote', 'DE12345679', 'TX12345679', 'SSN12345679', 'Active', NULL, 'QA employee'
),
(
    3, '789 3rd Ave', 'charlie@example.com', 'EMP003',
    NULL, 'Marketing Specialist', 'Charlie Brown',
    '123-456-7892', 2, '1990-04-25', '2022-06-01', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,
    'ID-003', 'Linda Brown', '321-654-0989', 'Mother', 'Bachelor', 'British', 'Single',
    'Part-time', 'Level 1', 'Mark Lead', 'mark.lead@example.com',
    'London Office', 'DE12345680', 'TX12345680', 'SSN12345680', 'Active', NULL, 'Marketing team'
),
(
    4, '101 4th Ave', 'diana@example.com', 'EMP004',
    NULL, 'HR Manager', 'Diana Prince',
    '123-456-7893', 3, '1987-08-20', '2019-09-01', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,
    'ID-004', 'Steve Trevor', '321-654-0990', 'Friend', 'Master', 'German', 'Single',
    'Full-time', 'Level 3', 'Anna Boss', 'anna.boss@example.com',
    'Berlin HQ', 'DE12345681', 'TX12345681', 'SSN12345681', 'Active', NULL, 'HR Manager'
),
(
    5, '202 5th Ave', 'eve@example.com', 'EMP005',
    NULL, 'Product Owner', 'Eve Adams',
    '123-456-7894', 1, '1992-11-05', '2023-01-10', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,
    'ID-005', 'John Adams', '321-654-0991', 'Father', 'PhD', 'American', 'Married',
    'Full-time', 'Level 4', 'Chris Exec', 'chris.exec@example.com',
    'NY Office', 'DE12345682', 'TX12345682', 'SSN12345682', 'Active', NULL, 'Product Owner team'
);