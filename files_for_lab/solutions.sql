BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "account" (
	"account_id"	integer NOT NULL,
	"district_id"	integer DEFAULT NULL,
	"frequency"	text,
	"date"	integer DEFAULT NULL,
	PRIMARY KEY("account_id")
);
CREATE TABLE IF NOT EXISTS "card" (
	"card_id"	integer DEFAULT NULL,
	"disp_id"	integer DEFAULT NULL,
	"type"	text,
	"issued"	text
);
CREATE TABLE IF NOT EXISTS "client" (
	"client_id"	integer DEFAULT NULL,
	"birth_number"	integer DEFAULT NULL,
	"district_id"	integer DEFAULT NULL
);
CREATE TABLE IF NOT EXISTS "disp" (
	"disp_id"	integer DEFAULT NULL,
	"client_id"	integer DEFAULT NULL,
	"account_id"	integer DEFAULT NULL,
	"type"	text
);
CREATE TABLE IF NOT EXISTS "district" (
	"A1"	integer DEFAULT NULL,
	"A2"	text,
	"A3"	text,
	"A4"	integer DEFAULT NULL,
	"A5"	integer DEFAULT NULL,
	"A6"	integer DEFAULT NULL,
	"A7"	integer DEFAULT NULL,
	"A8"	integer DEFAULT NULL,
	"A9"	integer DEFAULT NULL,
	"A10"	float DEFAULT NULL,
	"A11"	integer DEFAULT NULL,
	"A12"	float DEFAULT NULL,
	"A13"	float DEFAULT NULL,
	"A14"	integer DEFAULT NULL,
	"A15"	integer DEFAULT NULL,
	"A16"	integer DEFAULT NULL
);
CREATE TABLE IF NOT EXISTS "loan" (
	"loan_id"	integer DEFAULT NULL,
	"account_id"	integer DEFAULT NULL,
	"date"	integer DEFAULT NULL,
	"amount"	integer DEFAULT NULL,
	"duration"	integer DEFAULT NULL,
	"payments"	float DEFAULT NULL,
	"status"	text
);
CREATE TABLE IF NOT EXISTS "order" (
	"order_id"	integer DEFAULT NULL,
	"account_id"	integer DEFAULT NULL,
	"bank_to"	text,
	"account_to"	integer DEFAULT NULL,
	"amount"	float DEFAULT NULL,
	"k_symbol"	text
);
CREATE TABLE IF NOT EXISTS "trans" (
	"trans_id"	integer DEFAULT NULL,
	"account_id"	integer DEFAULT NULL,
	"date"	integer DEFAULT NULL,
	"type"	text,
	"operation"	text,
	"amount"	float DEFAULT NULL,
	"balance"	float DEFAULT NULL,
	"k_symbol"	text,
	"bank"	text,
	"account"	integer DEFAULT NULL
);
COMMIT;
