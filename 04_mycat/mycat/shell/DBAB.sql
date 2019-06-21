DROP TABLE IF EXISTS `dtab0204`;
CREATE TABLE IF NOT EXISTS `dtab0204` (
  `PROD_ID` VARCHAR(3) NOT NULL comment '險別代號',
  `PROD_NAME` VARCHAR(60) comment '險別名稱',
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;