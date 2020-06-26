-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/AA33Az
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "partnership" (
    "id" int   NOT NULL,
    "partner_name" VARCHAR   NOT NULL,
    "type" VARCHAR   NOT NULL,
    "address" VARCHAR,
    "latitude" dec,
    "longitude" dec,
    CONSTRAINT "pk_partnership" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "program" (
    "id" int   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "program_description_url" VARCHAR,
    CONSTRAINT "pk_program" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "instructor" (
    "id" in   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "web_url" VARCHAR,
    CONSTRAINT "pk_instructor" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "workshop_contract" (
    "id" int   NOT NULL,
    "partner_id" VARCHAR   NOT NULL,
    "instructor_id" VARCHAR   NOT NULL,
    "program_id" VARCHAR   NOT NULL,
    "onsite" BOOL   NOT NULL,
    "num_sessions" int,
    CONSTRAINT "pk_workshop_contract" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "workshop_contract" ADD CONSTRAINT "fk_workshop_contract_partner_id" FOREIGN KEY("partner_id")
REFERENCES "partnership" ("id");

ALTER TABLE "workshop_contract" ADD CONSTRAINT "fk_workshop_contract_instructor_id" FOREIGN KEY("instructor_id")
REFERENCES "instructor" ("id");

ALTER TABLE "workshop_contract" ADD CONSTRAINT "fk_workshop_contract_program_id" FOREIGN KEY("program_id")
REFERENCES "program" ("id");

