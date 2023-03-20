# Vyberove_rizeni_ukol

Úkol jsem vytvářel prostřednictvím databázového systému PostgresSQL a programu DBeaver.

Navrhuji databázi, která se skládá ze čtyř tabulek: client, bank_account, payment_card a payment_transaction. Tabulky jsem vytvořil pomocí standardních DDL skriptů.

Přiložené soubory:

- ER Diagram
- DDL skripty_vytvoření tabulek
- DML skripty_vkládání záznamů
- DML skripty_ukázky použití databáze

Datové typy:

Využíval jsem standardních SQL datových typů, převážně VARCHAR, CHAR, DATE. Jelikož v PostgresSQL nelze použít datový typ ENUM, tak jsem si pro sloupce, kde je výčet možností vytvořil vlastní datové typy. Skriptry pro jejich vytvoření jsou vždy před skriptem CREATE TABLE příslušné tabulky.

Vztahy mezi entitami a kardinality:

- Mezi tabulkami 'client' a 'bank_account' je vztah prostřednictvím společného sloupce 'personal_identification_number'. Kardinalita je "one to many", protože jeden klient může mít více bankovních účtů.
- Mezi tabulkami 'bank_account' a 'payment_card' je vztah prostřednictvím společného sloupce 'account_number'. Kardinalita je "one to many", protože k jednomu bankovnímu účtu může být přiřazeno více platebních karet.
- Mezi tabulkami 'payment_card' a 'payment_transaction' je vztah prostřednictvím společného sloupce 'card_number'. Kardinalita je "one to many", protože k jedné kartě může být přiřazeno více platebních transakcí.

Ukázky použití databáze:

Na ukázku možného použití navržené databáze jsem připravil i dvě ukázky, kdy je prostřednictvím skriptů možné získat konkrétní informace (více v přiloženém souboru s ukázkami).
