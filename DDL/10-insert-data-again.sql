INSERT INTO employers(company_name, company_address, yearly_revenu, is_hiring) VALUES('First', 'Lviv', 111.11, TRUE);
INSERT INTO employers(company_name, company_address, yearly_revenu) VALUES('Second', 'Kyiv', 123.45);
INSERT INTO employers(company_name, company_address, yearly_revenu, is_hiring) VALUES('Third', 'Katowice', 333.3, TRUE);

INSERT INTO conversations(user_name, employer_name, message, date_sent) VALUES ('Bogdan Bryzjatyy', 'First', 'Hi! Descktop? C#.', '2018-02-01 15:15:15');
INSERT INTO conversations(user_name, employer_name, message, date_sent) VALUES ('Yuriy Shtokaylo', 'Second', 'Hi! Develpment? PHP.', '2020-07-01 15:15:15');
INSERT INTO conversations(user_name, employer_name, message) VALUES ('Unknown test', 'Third', 'Hi! IT? QA.');