DROP TABLE IF EXISTS `dtabm001`;
CREATE TABLE IF NOT EXISTS `dtabm001` (
  `APLY_NO` VARCHAR(14) NOT NULL COMMENT '受理編號',
  `TRN_KIND` CHARACTER(6) NOT NULL COMMENT '交易種類',
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `APLY_DATE` DATE COMMENT '受理日期',
  `EFT_DATE` DATE COMMENT '生效日期',
  `BEF_FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '變更前主約保額',
  `BEF_PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '變更前主約繳費年期',
  `BEF_PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '變更前繳別',
  `BEF_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前主約保費',
  `BEF_MAIN_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前主約準備金',
  `BEF_MAIN_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前主約解約金',
  `BEF_RD_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前附約保費',
  `BEF_RD_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前附約準備金',
  `BEF_RD_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前附約解約金',
  `BEF_DVD` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前紅利',
  `AFT_FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '變更後主約保額',
  `AFT_PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '變更後主約繳費年期',
  `AFT_PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '變更後繳別',
  `AFT_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後主約保費',
  `AFT_MAIN_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後主約準備金',
  `AFT_MAIN_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後主約解約金',
  `AFT_RD_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後附約保費',
  `AFT_RD_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後附約準備金',
  `AFT_RD_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後附約解約金',
  `AFT_DVD` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後紅利',
  `FACE_AMT_IND` CHARACTER(1) DEFAULT  COMMENT '保額變更表示',
  `PAY_PRD_IND` CHARACTER(1) DEFAULT  COMMENT '繳費年期變更表示',
  `PAY_FREQ_IND` CHARACTER(1) DEFAULT  COMMENT '繳別變更表示',
  `RTAD_PREM_INDM` CHARACTER(1) DEFAULT  COMMENT '退補主約保費表示',
  `RTAD_MAIN_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約保費',
  `RTAD_RSV_INDM` CHARACTER(1) DEFAULT  COMMENT '退補主約準備金表示',
  `RTAD_MAIN_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約準備金',
  `RTAD_SUR_INDM` CHARACTER(1) DEFAULT  COMMENT '退補主約解約金表示',
  `RTAD_MAIN_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約解約金',
  `RTAD_PREM_INDR` CHARACTER(1) DEFAULT  COMMENT '退補附約保費表示',
  `RTAD_RD_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約保費',
  `RTAD_RSV_INDR` CHARACTER(1) DEFAULT  COMMENT '退補附約準備金表示',
  `RTAD_RD_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約準備金',
  `RTAD_SUR_INDR` CHARACTER(1) DEFAULT  COMMENT '退補附約解約金表示',
  `RTAD_RD_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約解約金',
  `RTN_DVD` DECIMAL(13,4) DEFAULT 0 COMMENT '退還紅利',
  `RTN_LOAN_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '償還貸款金額',
  `RTN_LOAN_INT` DECIMAL(13,4) DEFAULT 0 COMMENT '償還貸款利息',
  `LOAN_BAL` DECIMAL(13,4) DEFAULT 0 COMMENT '貸款餘額',
  `NEW_MAT_DATE` DATE COMMENT '新滿期日',
  `NONE_PASS_DAYS` DECIMAL(3,0) DEFAULT 0 COMMENT '未經過天數',
  `TAX_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '印花稅',
  `PREM_INT` DECIMAL(13,4) DEFAULT 0 COMMENT '保費利息',
  `FILE_NO` VARCHAR(14) DEFAULT  COMMENT '檔案號碼',
  `CURR` CHARACTER(3) DEFAULT  COMMENT '幣別',
  `INCR_TIME` VARCHAR(1) COMMENT '增購保額辦理時點',
  `BEF_INV_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更前定期超額(彈性)保費',
  `AFT_INV_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '變更後定期超額(彈性)保費',
  `INV_PREM_EFT_DATE` DATE COMMENT '定期超額(彈性)保費生效日',
  `SP_STAD_1` DECIMAL(13,4) COMMENT '短期加費1',
  `SP_STAD_2` DECIMAL(13,4) COMMENT '短期加費2',
  `SP_STAD_3` DECIMAL(13,4) COMMENT '短期加費3',
  `SP_STAD_4` DECIMAL(13,4) COMMENT '短期加費4',
  `SP_STAD_5` DECIMAL(13,4) COMMENT '短期加費5',
  PRIMARY KEY (`APLY_NO`, `TRN_KIND`, `POLICY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主約變更交易檔';

DROP TABLE IF EXISTS `dtab0007`;
CREATE TABLE IF NOT EXISTS `dtab0007` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) NOT NULL COMMENT '險別',
  `ID` VARCHAR(10) NOT NULL COMMENT '客戶ID',
  `SP_EFT_DATE` DATE NOT NULL COMMENT '特承生效日',
  `DNGR_JOB_E` CHARACTER(2) DEFAULT  COMMENT '危險職業(E承保)',
  `DNGR_JOB_P` CHARACTER(3) DEFAULT  COMMENT '危險職業(P承保)',
  `EXCL_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '除外責任',
  `EXCL_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '除外責任期間',
  `YAGE` DECIMAL(2,0) DEFAULT 0 COMMENT 'Y增齡',
  `LTAD_PNT` DECIMAL(3,0) DEFAULT 0 COMMENT '弱體長加分數',
  `STAD_PRD` DECIMAL(1,0) DEFAULT 0 COMMENT '弱體短期加費期間',
  `DDCT_PAY` DECIMAL(1,0) DEFAULT 0 COMMENT '削減給付',
  `TRAN_ID` VARCHAR(7) DEFAULT  COMMENT '交易代號',
  `CHG_ID` VARCHAR(10) DEFAULT  COMMENT '異動人員',
  `CHG_DATE` TIMESTAMP COMMENT '異動日期時間',
  `STAD_STR_DATE` DATE COMMENT '短期加費始期',
  `STAD_END_DATE` DATE COMMENT '短期加費終期',
  `SCORE_RATE_KIND` VARCHAR(1) COMMENT '加費種類',
  `SCORE_RATE_VALUE` DECIMAL(16,4) COMMENT '加費值',
  `SG_LTAD_PNT` DECIMAL(3,0) COMMENT 'SG弱體長加分數',
  PRIMARY KEY (`POLICY_NO`, `PROD_ID`, `ID`, `SP_EFT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特別承保';

DROP TABLE IF EXISTS `dtaga505`;
CREATE TABLE IF NOT EXISTS `dtaga505` (
  `PROD_ID` VARCHAR(3) NOT NULL COMMENT '險別',
  `AGE` DECIMAL(3,0) NOT NULL COMMENT '年齡',
  `SEX` CHARACTER(1) NOT NULL COMMENT '性別',
  `PAY_PRD` DECIMAL(3,0) NOT NULL COMMENT '繳費年期',
  `PREM_SPEC_KEY1` VARCHAR(3) NOT NULL COMMENT '各險特有欄位1',
  `PREM_SPEC_KEY2` VARCHAR(3) NOT NULL COMMENT '各險特有欄位2',
  `PASS_YEAR` DECIMAL(3,0) NOT NULL COMMENT '經過年度',
  `MAT_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '滿期金',
  `ELF_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '祝壽金',
  PRIMARY KEY (`PROD_ID`, `AGE`, `SEX`, `PAY_PRD`, `PREM_SPEC_KEY1`, `PREM_SPEC_KEY2`, `PASS_YEAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FORMS(滿期金+祝壽金)';