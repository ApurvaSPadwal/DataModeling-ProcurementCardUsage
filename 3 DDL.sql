


CREATE TABLE CardHolder 
(
    Cardholder_ID	INT,
    Employee_Name	VARCHAR(512),
    Department	VARCHAR(512),
    Start_Date	VARCHAR(512),
    SSN	INT,
    Designation	VARCHAR(512),
    Department_ID	VARCHAR(512),
    Email	VARCHAR(512)
);

CREATE TABLE procurement_card_application 
(
    Cardholder_ID	INT,
    Application_ID	INT,
    Application_Status	VARCHAR(512),
    Admin_ID	INT,
    President_ID	INT,
    Applicant_Name	VARCHAR(512)
);

CREATE TABLE procurement_card 
(
    Cardholder_ID	INT,
    CardHolder_Name	VARCHAR(512),
    Effective_date 	VARCHAR(512),
    Spend_limit	INT,
    Balance	INT,
    Card_type	VARCHAR(512)
);
