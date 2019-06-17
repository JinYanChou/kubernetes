DROP TABLE IF EXISTS `dtaga001_prod_defi`;
CREATE TABLE IF NOT EXISTS `dtaga001_prod_defi` (
  `PROD_ID` VARCHAR(3) NOT NULL,
  `PROD_NAME` VARCHAR(60)
);
ALTER TABLE `dtaga001_prod_defi`
  ADD CONSTRAINT `DTAGA001_PK` PRIMARY KEY 
    (`PROD_ID`);