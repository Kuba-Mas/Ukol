\\\ DML skripty - ukázky použití \\\

\\\ Ukázka 1 - zjištění jmen a rodných čísel klientů, kteří mají založen bankovní účet Standard \\\


SELECT c.first_name, c.last_name, c.personal_identification_number, b.account_type
FROM client AS c
JOIN bank_account AS b ON c.personal_identification_number = b.personal_identification_number
WHERE account_type = 'Standard';


\\\ Ukázka 2 - zjištění kdy a jaké karty byly použity při transakcích (a o jaké šlo částky a z jaké země byl obchodník) \\\ 


SELECT pc.card_number, pt.accounting_date, pt.amount, pt.iso_country_code
FROM payment_transaction AS pt
JOIN payment_card AS pc ON pt.card_number = pc.card_number;