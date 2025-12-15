-- Create database
CREATE DATABASE IF NOT EXISTS market_minds;
USE market_minds;

-- Table structure for cleaned marketing data
CREATE TABLE IF NOT EXISTS marketing_clean_import (
    id INT,
    year_birth INT,
    education VARCHAR(50),
    marital_status VARCHAR(50),
    income INT,
    kidhome INT,
    teenhome INT,
    dt_customer DATE,
    recency INT,

    mntwines INT,
    mntfruits INT,
    mntmeatproducts INT,
    mntfishproducts INT,
    mntsweetproducts INT,
    mntbakedprods INT,

    numdealspurchases INT,
    numwebpurchases INT,
    numcatalogpurchases INT,
    numstorepurchases INT,
    numwebvisitsmonth INT,

    acceptedcmp1 TINYINT,
    acceptedcmp2 TINYINT,
    acceptedcmp3 TINYINT,
    acceptedcmp4 TINYINT,
    acceptedcmp5 TINYINT,
    response TINYINT,
    complain TINYINT,

    country VARCHAR(50),
    total_spend DECIMAL(10,2)
);
