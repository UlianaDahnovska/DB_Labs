CREATE TABLE Category (
    FURNITURE_CATEGORY_ID SERIAL PRIMARY KEY  ,
	FURNITURE_CATEGORY_NAME VARCHAR(30)
);

CREATE TABLE Furniture (
    FURNITURE_ID SERIAL PRIMARY KEY  ,
	FURNITURE_NAME VARCHAR(80),
	FURNITURE_SHORT_DESCRIPTION VARCHAR(80),
	FURNITURE_CATEGORY_ID INT REFERENCES CATEGORY(FURNITURE_CATEGORY_ID)
);

CREATE TABLE Furniture_Price (
    FURNITURE_PRICE_ID SERIAL,
	FURNITURE_PRICE INT,
	FURNITURE_ID INT REFERENCES FURNITURE(FURNITURE_ID)
); 
