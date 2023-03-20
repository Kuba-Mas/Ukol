\\\ DML skripty - vkládání záznamů \\\\

\\\ DML - tabulka client \\\

INSERT INTO client VALUES
('Jan', 'Bankéř', '9301011234', 'muž', '1993-01-01', 'Česká republika', 'ženatý/vdaná', 'Olbrachtova', '1929', 'Praha', 'Česká republika', '14000', '(50.04428, 14.44807)', 'Bankovní', '1300', 'Most', 'Česká republika', '43401', '(50.50083, 13.64132)' )
;


\\\ DML - tabulka bank_account \\\

INSERT INTO bank_account VALUES
('1234567890', '2003-01-01', '0001-01-01', 'Standard', 50000, 10, '9301011234'),
('1234567891', '2003-01-02', '0001-01-01', 'Standard', 0, 0, '9301011234')
;


\\\ DML - tabulka payment_card \\\

INSERT INTO payment_card VALUES
('1122334455667780', '2025-12-31', '123', 'Jan Bankéř', '1234567890')
;


\\\ DML - tabulka payment_transaction \\\

INSERT INTO payment_transaction (accounting_date, amount, payment_type, iso_country_code, merchant_id, gps_payment_terminal, card_number) VALUES 
('2023-01-02', '10500', 'online', 'CZE', '9876543210', '(0.0, 0.0)', '1122334455667780'),
('2023-01-03', '3290', 'terminál', 'CZE', '9876543210', '(50.08368, 14.42362)', '1122334455667780')
;