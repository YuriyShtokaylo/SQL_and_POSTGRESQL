CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenu FLOAT(5, 2), -- Approximation[ Allowed: 123.12, 12.1 | Not allowed: 1234.2 | 1.123 =Rounde=> 1.12 ]
    yearly_revenu NUMERIC(5,2), -- Exact value[ Allowed: 123.12 | Not allowed: 1234.123 ]
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);