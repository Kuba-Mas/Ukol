\\\ DDL skripty pro tabulky \\\\

\\\ Tabulka client \\\

CREATE TYPE sex_type AS ENUM ('muž', 'žena');

CREATE TYPE marital AS ENUM ('svobodný/svobodná', 'ženatý/vdaná', 'rozvedený/rozvedená', 'registrované partnerství');

CREATE TABLE client (
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	personal_identification_number CHAR(10) NOT NULL,
	sex SEX_TYPE NOT NULL,
	birthdate DATE NOT NULL,
	citizenship VARCHAR(50) NOT NULL,
	marital_status MARITAL NOT NULL,
	permanent_residence_street VARCHAR(100) NOT NULL,
	permanent_residence_house_number VARCHAR(10) NOT NULL,
	permanent_residence_city VARCHAR(50),
	permanent_residence_country VARCHAR(50) NOT NULL,
	permanent_residence_zip_code CHAR(5) NOT NULL,
	permanent_residence_gps POINT NOT NULL,
	contact_adress_street VARCHAR(100) NOT NULL,
	contact_adress_house_number VARCHAR(10) NOT NULL,
	contact_adress_city VARCHAR(50),
	contact_adress_country VARCHAR(50),
	contact_adress_zip_code CHAR(5) NOT NULL,
	contact_adress_gps POINT NOT NULL,
	PRIMARY KEY (personal_identification_number)
);

\\\ Tabulka bank_account \\\

CREATE TYPE type_account AS ENUM ('Standard', 'Dětský', 'Student', 'Senior', 'Běžný v cizí měně');

CREATE TABLE bank_account (
	account_number VARCHAR(50) NOT NULL,
	open_date DATE NOT NULL,
	close_date DATE,
	account_type TYPE_ACCOUNT NOT NULL,
	overdraft_limit NUMERIC(6,0) NOT NULL,
	current_overdraft_drawdown_period INT NOT NULL,
	personal_identification_number CHAR(10) NOT NULL,
	PRIMARY KEY (account_number)
);

\\\ Tabulka payment_card \\\

CREATE TABLE payment_card (
	card_number VARCHAR(20) NOT NULL,
	expiration_date DATE NOT NULL,
	cvv_cvc_code VARCHAR(4) NOT NULL,
	holder_name VARCHAR(50) NOT NULL,
	account_number VARCHAR(50) NOT NULL,
	PRIMARY KEY (card_number)
);

\\\ Tabulka payment_transaction \\\

CREATE TYPE type_payment AS ENUM ('terminál', 'online');

CREATE TABLE payment_transaction (
	id_transaction SERIAL PRIMARY KEY,
	accounting_date DATE NOT NULL,
	amount NUMERIC(20,2) NOT NULL,
	payment_type TYPE_PAYMENT NOT NULL,
	iso_country_code CHAR(3) NOT NULL,
	merchant_id VARCHAR(20) NOT NULL,
	gps_payment_terminal POINT NOT NULL,
	card_number VARCHAR(20) NOT NULL
);




