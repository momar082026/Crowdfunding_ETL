-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/oY1fm5
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.

--Drop Tables if they Exist 
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS Compaign;


CREATE TABLE "category" (
    "category_id" varchar(15)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(15)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(40)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Compaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)  NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" Varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Compaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "Compaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Compaign" ("subcategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Compaign" ("contact_id");

