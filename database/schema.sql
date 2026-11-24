CREATE TABLE projects (
    project_name VARCHAR(255) PRIMARY KEY,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL REFERENCES projects(project_name)
);

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    debit_account_id INT NOT NULL REFERENCES accounts(id),
    credit_account_id INT NOT NULL REFERENCES accounts(id),
    project_name VARCHAR(255) NOT NULL REFERENCES projects(project_name)
);
