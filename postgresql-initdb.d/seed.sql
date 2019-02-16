CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

CREATE TABLE "Payments" (
    "Id" uuid NOT NULL,
    "CreditCardNumber_Value" text NOT NULL,
    "CardHolder_Value" text NOT NULL,
    "ExpirationDate_Value" timestamp without time zone NOT NULL,
    "Ammount_Value" numeric NOT NULL,
    "SecurityCode_Value" character varying(3) NULL,
    "PaymentStatus" integer NOT NULL,
    CONSTRAINT "PK_Payments" PRIMARY KEY ("Id")
);

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190211210158_InitialCreate', '2.2.1-servicing-10028');


