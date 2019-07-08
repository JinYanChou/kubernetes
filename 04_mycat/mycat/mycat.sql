set session sql_mode='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

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
  `FACE_AMT_IND` CHARACTER(1) DEFAULT '' COMMENT '保額變更表示',
  `PAY_PRD_IND` CHARACTER(1) DEFAULT '' COMMENT '繳費年期變更表示',
  `PAY_FREQ_IND` CHARACTER(1) DEFAULT '' COMMENT '繳別變更表示',
  `RTAD_PREM_INDM` CHARACTER(1) DEFAULT '' COMMENT '退補主約保費表示',
  `RTAD_MAIN_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約保費',
  `RTAD_RSV_INDM` CHARACTER(1) DEFAULT '' COMMENT '退補主約準備金表示',
  `RTAD_MAIN_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約準備金',
  `RTAD_SUR_INDM` CHARACTER(1) DEFAULT '' COMMENT '退補主約解約金表示',
  `RTAD_MAIN_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '退補主約解約金',
  `RTAD_PREM_INDR` CHARACTER(1) DEFAULT '' COMMENT '退補附約保費表示',
  `RTAD_RD_PREM` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約保費',
  `RTAD_RSV_INDR` CHARACTER(1) DEFAULT '' COMMENT '退補附約準備金表示',
  `RTAD_RD_RSV` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約準備金',
  `RTAD_SUR_INDR` CHARACTER(1) DEFAULT '' COMMENT '退補附約解約金表示',
  `RTAD_RD_SUR` DECIMAL(13,4) DEFAULT 0 COMMENT '退補附約解約金',
  `RTN_DVD` DECIMAL(13,4) DEFAULT 0 COMMENT '退還紅利',
  `RTN_LOAN_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '償還貸款金額',
  `RTN_LOAN_INT` DECIMAL(13,4) DEFAULT 0 COMMENT '償還貸款利息',
  `LOAN_BAL` DECIMAL(13,4) DEFAULT 0 COMMENT '貸款餘額',
  `NEW_MAT_DATE` DATE COMMENT '新滿期日',
  `NONE_PASS_DAYS` DECIMAL(3,0) DEFAULT 0 COMMENT '未經過天數',
  `TAX_AMT` DECIMAL(13,4) DEFAULT 0 COMMENT '印花稅',
  `PREM_INT` DECIMAL(13,4) DEFAULT 0 COMMENT '保費利息',
  `FILE_NO` VARCHAR(14) DEFAULT '' COMMENT '檔案號碼',
  `CURR` CHARACTER(3) DEFAULT '' COMMENT '幣別',
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

CREATE TABLE IF NOT EXISTS `dtab0007` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) NOT NULL COMMENT '險別',
  `ID` VARCHAR(10) NOT NULL COMMENT '客戶ID',
  `SP_EFT_DATE` DATE NOT NULL COMMENT '特承生效日',
  `DNGR_JOB_E` CHARACTER(2) DEFAULT '' COMMENT '危險職業(E承保)',
  `DNGR_JOB_P` CHARACTER(3) DEFAULT '' COMMENT '危險職業(P承保)',
  `EXCL_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '除外責任',
  `EXCL_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '除外責任期間',
  `YAGE` DECIMAL(2,0) DEFAULT 0 COMMENT 'Y增齡',
  `LTAD_PNT` DECIMAL(3,0) DEFAULT 0 COMMENT '弱體長加分數',
  `STAD_PRD` DECIMAL(1,0) DEFAULT 0 COMMENT '弱體短期加費期間',
  `DDCT_PAY` DECIMAL(1,0) DEFAULT 0 COMMENT '削減給付',
  `TRAN_ID` VARCHAR(7) DEFAULT '' COMMENT '交易代號',
  `CHG_ID` VARCHAR(10) DEFAULT '' COMMENT '異動人員',
  `CHG_DATE` TIMESTAMP COMMENT '異動日期時間',
  `STAD_STR_DATE` DATE COMMENT '短期加費始期',
  `STAD_END_DATE` DATE COMMENT '短期加費終期',
  `SCORE_RATE_KIND` VARCHAR(1) COMMENT '加費種類',
  `SCORE_RATE_VALUE` DECIMAL(16,4) COMMENT '加費值',
  `SG_LTAD_PNT` DECIMAL(3,0) COMMENT 'SG弱體長加分數',
  PRIMARY KEY (`POLICY_NO`, `PROD_ID`, `ID`, `SP_EFT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特別承保';

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

CREATE TABLE IF NOT EXISTS `dtab0204` (
  `APLY_NO` VARCHAR(14) NOT NULL COMMENT '受理編號',
  `TRN_KIND` CHARACTER(6) NOT NULL COMMENT '交易種類',
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `ACPT_DIV_NO` CHARACTER(7) DEFAULT '' COMMENT '受理單位',
  `APLY_STS` CHARACTER(1) DEFAULT '' COMMENT '受理進度',
  `APLY_DATE` DATE COMMENT '受理日期',
  `EFT_DATE` DATE COMMENT '生效日期',
  `AGNT_ID` CHARACTER(10) DEFAULT '' COMMENT '服務人員ID',
  `AGNT_NAME` VARCHAR(40) DEFAULT '' COMMENT '服務人員姓名',
  `RTN_ADD_IND` CHARACTER(1) DEFAULT '' COMMENT '退補表示',
  `RTN_ADD_AMT` DECIMAL(11,2) DEFAULT 0 COMMENT '退補金額',
  `PAY_KIND` CHARACTER(1) DEFAULT '' COMMENT '給付方式',
  `CLC_KIND` CHARACTER(1) DEFAULT '' COMMENT '收費種類',
  `PAY_DATE` DATE COMMENT '繳費日期',
  `ACNT_DATE` DATE COMMENT '帳務日期',
  `IS_SELF_CHCK` CHARACTER(1) DEFAULT '' COMMENT '是否自核',
  `IS_CHCK_POL` CHARACTER(1) DEFAULT '' COMMENT '是否需核保',
  `LST_CHG_KIND` CHARACTER(6) DEFAULT '' COMMENT '主檔最近異動種類',
  `LST_CHG_DATE` TIMESTAMP COMMENT '主檔最近異動日期',
  `INPUT_DATE` TIMESTAMP NOT NULL COMMENT '輸入日期',
  `INPUT_ID` CHARACTER(10) NOT NULL COMMENT '輸入人員ID',
  `INPUT_NAME` VARCHAR(40) DEFAULT '' COMMENT '輸入人員姓名',
  `TRNS_DATE` DATE COMMENT '轉送日期',
  `TRN_SER_NO` INTEGER DEFAULT 0 COMMENT '交易序號',
  `APRV_ID` CHARACTER(10) DEFAULT '' COMMENT '覆核人員ID',
  `APRV_NAME` VARCHAR(40) DEFAULT '' COMMENT '覆核人員姓名',
  `APRV_DATE` TIMESTAMP COMMENT '覆核日期',
  `TRAN_PROC_ID` CHARACTER(10) DEFAULT '' COMMENT '轉送處理人員ID',
  `TRAN_PROC_NAME` VARCHAR(40) DEFAULT '' COMMENT '轉送處理人員姓名',
  `TRAN_PROC_DATE` TIMESTAMP COMMENT '轉送處理日期',
  `TRAN_APRV_ID` CHARACTER(10) DEFAULT '' COMMENT '轉送覆核人員ID',
  `TRAN_APRV_NAME` VARCHAR(40) DEFAULT '' COMMENT '轉送覆核人員姓名',
  `TRAN_APRV_DATE` TIMESTAMP COMMENT '轉送覆核日期',
  `MATH_PROC_ID` CHARACTER(10) DEFAULT '' COMMENT '數理處理人員ID',
  `MATH_PROC_NAME` VARCHAR(40) DEFAULT '' COMMENT '數理處理人員姓名',
  `MATH_PROC_DATE` TIMESTAMP COMMENT '數理處理日期',
  `MATH_APRV_ID` CHARACTER(10) DEFAULT '' COMMENT '數理覆核人員ID',
  `MATH_APRV_NAME` VARCHAR(40) DEFAULT '' COMMENT '數理覆核人員姓名',
  `MATH_APRV_DATE` TIMESTAMP COMMENT '數理覆核日期',
  `CHCK_ITEM` VARCHAR(100) DEFAULT '' COMMENT '應檢具文件種類',
  `MARK_PRT_DATE` DATE COMMENT '批註印製日期',
  `FRC_CODE` CHARACTER(1) DEFAULT '' COMMENT '強迫代號',
  `SPC_AUTH_CODE` VARCHAR(14) COMMENT '特殊授權碼',
  `RCPT_SER_NO` CHARACTER(14) DEFAULT '' COMMENT '單據序號',
  `ADM_CTR` CHARACTER(7) DEFAULT '' COMMENT '行政中心',
  `RPRT_TMS` DECIMAL(2,0) DEFAULT 0 COMMENT '保單補發次數',
  `TOT_RTN_AMT` DECIMAL(11,2) DEFAULT 0 COMMENT '總退金額',
  `TOT_ADD_AMT` DECIMAL(11,2) DEFAULT 0 COMMENT '總補金額',
  `AGNT_DIV_NO` CHARACTER(7) COMMENT '服務人員單位',
  `IS_SERV` CHARACTER(1) COMMENT '是否櫃檯件',
  `HOST_LSTG_KIND` CHARACTER(6) COMMENT 'HOST最近異動種類',
  `HOST_LSTG_DATE` TIMESTAMP COMMENT 'HOST最近異動日期',
  `ACNT_ID` CHARACTER(10) COMMENT '作帳人員ID',
  `ACNT_TRN_SERNO` INTEGER COMMENT '經辦交易序號(作帳人員)',
  `SLIP_DIV_NO` CHARACTER(7) COMMENT '帳務科別代碼',
  `SLIP_LOT_NO` CHARACTER(3) COMMENT '傳票批號',
  `SLIP_SET_NO` INTEGER COMMENT '傳票組號',
  `TRAN_SRC` VARCHAR(2) COMMENT '交易來源',
  `IS_ID_PRINT` CHARACTER(1) DEFAULT '' COMMENT '證件是否用影印方式留存',
  `LICENSE_NO` VARCHAR(10) COMMENT '登錄證字號',
  `IS_ELC_SIGN` VARCHAR(1) COMMENT '是否為電子簽名受理',
  `LIA_APLY_DATE` DATE COMMENT '申請書填寫日',
  `LIA_KEY_NO` VARCHAR(32) COMMENT '通報編號',
  `TRN_SER_NO_AC` VARCHAR(18) DEFAULT '' COMMENT '交易編號',
  PRIMARY KEY (`APLY_NO`, `TRN_KIND`, `POLICY_NO`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保全受理檔';

CREATE TABLE IF NOT EXISTS `dtab0001` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) DEFAULT '' COMMENT '險別',
  `ISSUE_DATE` DATE COMMENT '投保日期',
  `PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '繳費年期',
  `POL_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '保險年期',
  `PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '繳別',
  `FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '主約保額',
  `FACE_AMT_UNIT` DECIMAL(1,0) DEFAULT 0 COMMENT '保額單位',
  `MLY_PAY_DATE` DATE COMMENT '墊繳下次應繳日',
  `MNXT_PAY_DATE` DATE COMMENT '主約下次應繳日',
  `LST_PAY_DATE` DATE COMMENT '最近繳費日',
  `PAY_TIMES` DECIMAL(3,0) DEFAULT 0 COMMENT '主約繳費次數',
  `UN_CASH_TMS` DECIMAL(3,0) DEFAULT 0 COMMENT '票據未兌現次數',
  `DVD_KIND` DECIMAL(1,0) DEFAULT 0 COMMENT '紅利選擇',
  `LST_CHG_KIND` CHARACTER(6) DEFAULT '' COMMENT '最近異動種類',
  `LST_CHG_DATE` TIMESTAMP COMMENT '最近異動日期',
  `MED_EXAM` DECIMAL(1,0) DEFAULT 0 COMMENT '體檢別',
  `EFT_CODE` CHARACTER(2) DEFAULT '' COMMENT '契約效力',
  `PRCS_IND` CHARACTER(2) DEFAULT '' COMMENT '辦理表示',
  `RPRT_TMS` DECIMAL(2,0) DEFAULT 0 COMMENT '保單補發次數',
  `RPRT_DATE` DATE COMMENT '保單補發日期',
  `LPS_DATE` DATE COMMENT '停效日期',
  `AUTO_PREM_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '墊繳表示',
  `CLC_NO` CHARACTER(7) DEFAULT '' COMMENT '收費代號',
  `PRT_MRG_CODE` CHARACTER(1) DEFAULT '' COMMENT '保單合併碼',
  `APC_ID` VARCHAR(10) DEFAULT '' COMMENT '要保人ID',
  `INSD_ID` VARCHAR(10) DEFAULT '' COMMENT '被保人ID',
  `AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '投保年齡',
  `SEC_ISD_AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '次被保人年齡',
  `EXT_YYMM` CHARACTER(4) DEFAULT '' COMMENT '延長期間',
  `PRE_PAY_IND` DECIMAL(1,0) DEFAULT 0 COMMENT '提前給付表示',
  `RTN_TSO` CHARACTER(1) DEFAULT '' COMMENT '生命表回饋方式',
  `SICK_Y` DECIMAL(2,0) DEFAULT 0 COMMENT '患病年度',
  `SEX` CHARACTER(1) DEFAULT '' COMMENT '被保人性別',
  `SETUP_DATE` DATE COMMENT '成立日期',
  `ANTY_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '年金保證期間／約定給付期間',
  `ANTY_PAY_DATE` DATE COMMENT '年金開始給付日',
  `ANTY_PAY_KIND` CHARACTER(1) DEFAULT '' COMMENT '年金給付方式',
  `SCRT_IND` CHARACTER(1) DEFAULT '' COMMENT '密戶表示',
  `SALE_CHNL` CHARACTER(1) DEFAULT '' COMMENT '銷售通路',
  `NB_APLY_NO` VARCHAR(12) DEFAULT '' COMMENT '新契約受理編號',
  `PREM_SPEC_KEY1` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位一',
  `PREM_SPEC_KEY2` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位二',
  `MAIN_PREM` DECIMAL(16,4) DEFAULT 0 COMMENT '主約表定保費含加費',
  `JOB_ID` CHARACTER(1) DEFAULT '' COMMENT '職業分類',
  `GS_POLICY_NO` VARCHAR(12) COMMENT '國寶幸福原保單號碼',
  PRIMARY KEY (`POLICY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='壽險主約投保紀錄';

CREATE TABLE IF NOT EXISTS `dtab0001_ta` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) DEFAULT '' COMMENT '險別',
  `ISSUE_DATE` DATE COMMENT '投保日期',
  `PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '繳費年期',
  `POL_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '保險年期',
  `PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '繳別',
  `FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '主約保額',
  `FACE_AMT_UNIT` DECIMAL(1,0) DEFAULT 0 COMMENT '保額單位',
  `MLY_PAY_DATE` DATE COMMENT '墊繳下次應繳日',
  `MNXT_PAY_DATE` DATE COMMENT '主約下次應繳日',
  `LST_PAY_DATE` DATE COMMENT '最近繳費日',
  `PAY_TIMES` DECIMAL(3,0) DEFAULT 0 COMMENT '主約繳費次數',
  `UN_CASH_TMS` DECIMAL(3,0) DEFAULT 0 COMMENT '票據未兌現次數',
  `DVD_KIND` DECIMAL(1,0) DEFAULT 0 COMMENT '紅利選擇',
  `LST_CHG_KIND` CHARACTER(6) DEFAULT '' COMMENT '最近異動種類',
  `LST_CHG_DATE` TIMESTAMP COMMENT '最近異動日期',
  `MED_EXAM` DECIMAL(1,0) DEFAULT 0 COMMENT '體檢別',
  `EFT_CODE` CHARACTER(2) DEFAULT '' COMMENT '契約效力',
  `PRCS_IND` CHARACTER(2) DEFAULT '' COMMENT '辦理表示',
  `RPRT_TMS` DECIMAL(2,0) DEFAULT 0 COMMENT '保單補發次數',
  `RPRT_DATE` DATE COMMENT '保單補發日期',
  `LPS_DATE` DATE COMMENT '停效日期',
  `AUTO_PREM_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '墊繳表示',
  `CLC_NO` CHARACTER(7) DEFAULT '' COMMENT '收費代號',
  `PRT_MRG_CODE` CHARACTER(1) DEFAULT '' COMMENT '保單合併碼',
  `APC_ID` VARCHAR(10) DEFAULT '' COMMENT '要保人ID',
  `INSD_ID` VARCHAR(10) DEFAULT '' COMMENT '被保人ID',
  `AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '投保年齡',
  `SEC_ISD_AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '次被保人年齡',
  `EXT_YYMM` CHARACTER(4) DEFAULT '' COMMENT '延長期間',
  `PRE_PAY_IND` DECIMAL(1,0) DEFAULT 0 COMMENT '提前給付表示',
  `RTN_TSO` CHARACTER(1) DEFAULT '' COMMENT '生命表回饋方式',
  `SICK_Y` DECIMAL(2,0) DEFAULT 0 COMMENT '患病年度',
  `SEX` CHARACTER(1) DEFAULT '' COMMENT '被保人性別',
  `SETUP_DATE` DATE COMMENT '成立日期',
  `ANTY_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '年金保證期間／約定給付期間',
  `ANTY_PAY_DATE` DATE COMMENT '年金開始給付日',
  `ANTY_PAY_KIND` CHARACTER(1) DEFAULT '' COMMENT '年金給付方式',
  `SCRT_IND` CHARACTER(1) DEFAULT '' COMMENT '密戶表示',
  `SALE_CHNL` CHARACTER(1) DEFAULT '' COMMENT '銷售通路',
  `NB_APLY_NO` VARCHAR(12) DEFAULT '' COMMENT '新契約受理編號',
  `PREM_SPEC_KEY1` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位一',
  `PREM_SPEC_KEY2` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位二',
  `MAIN_PREM` DECIMAL(16,4) DEFAULT 0 COMMENT '主約表定保費含加費',
  `JOB_ID` CHARACTER(1) DEFAULT '' COMMENT '職業分類',
  `GS_POLICY_NO` VARCHAR(12) COMMENT '國寶幸福原保單號碼',
  PRIMARY KEY (`POLICY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='壽險主約投保紀錄';

CREATE TABLE IF NOT EXISTS `dtab0001_tb` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) DEFAULT '' COMMENT '險別',
  `ISSUE_DATE` DATE COMMENT '投保日期',
  `PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '繳費年期',
  `POL_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '保險年期',
  `PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '繳別',
  `FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '主約保額',
  `FACE_AMT_UNIT` DECIMAL(1,0) DEFAULT 0 COMMENT '保額單位',
  `MLY_PAY_DATE` DATE COMMENT '墊繳下次應繳日',
  `MNXT_PAY_DATE` DATE COMMENT '主約下次應繳日',
  `LST_PAY_DATE` DATE COMMENT '最近繳費日',
  `PAY_TIMES` DECIMAL(3,0) DEFAULT 0 COMMENT '主約繳費次數',
  `UN_CASH_TMS` DECIMAL(3,0) DEFAULT 0 COMMENT '票據未兌現次數',
  `DVD_KIND` DECIMAL(1,0) DEFAULT 0 COMMENT '紅利選擇',
  `LST_CHG_KIND` CHARACTER(6) DEFAULT '' COMMENT '最近異動種類',
  `LST_CHG_DATE` TIMESTAMP COMMENT '最近異動日期',
  `MED_EXAM` DECIMAL(1,0) DEFAULT 0 COMMENT '體檢別',
  `EFT_CODE` CHARACTER(2) DEFAULT '' COMMENT '契約效力',
  `PRCS_IND` CHARACTER(2) DEFAULT '' COMMENT '辦理表示',
  `RPRT_TMS` DECIMAL(2,0) DEFAULT 0 COMMENT '保單補發次數',
  `RPRT_DATE` DATE COMMENT '保單補發日期',
  `LPS_DATE` DATE COMMENT '停效日期',
  `AUTO_PREM_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '墊繳表示',
  `CLC_NO` CHARACTER(7) DEFAULT '' COMMENT '收費代號',
  `PRT_MRG_CODE` CHARACTER(1) DEFAULT '' COMMENT '保單合併碼',
  `APC_ID` VARCHAR(10) DEFAULT '' COMMENT '要保人ID',
  `INSD_ID` VARCHAR(10) DEFAULT '' COMMENT '被保人ID',
  `AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '投保年齡',
  `SEC_ISD_AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '次被保人年齡',
  `EXT_YYMM` CHARACTER(4) DEFAULT '' COMMENT '延長期間',
  `PRE_PAY_IND` DECIMAL(1,0) DEFAULT 0 COMMENT '提前給付表示',
  `RTN_TSO` CHARACTER(1) DEFAULT '' COMMENT '生命表回饋方式',
  `SICK_Y` DECIMAL(2,0) DEFAULT 0 COMMENT '患病年度',
  `SEX` CHARACTER(1) DEFAULT '' COMMENT '被保人性別',
  `SETUP_DATE` DATE COMMENT '成立日期',
  `ANTY_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '年金保證期間／約定給付期間',
  `ANTY_PAY_DATE` DATE COMMENT '年金開始給付日',
  `ANTY_PAY_KIND` CHARACTER(1) DEFAULT '' COMMENT '年金給付方式',
  `SCRT_IND` CHARACTER(1) DEFAULT '' COMMENT '密戶表示',
  `SALE_CHNL` CHARACTER(1) DEFAULT '' COMMENT '銷售通路',
  `NB_APLY_NO` VARCHAR(12) DEFAULT '' COMMENT '新契約受理編號',
  `PREM_SPEC_KEY1` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位一',
  `PREM_SPEC_KEY2` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位二',
  `MAIN_PREM` DECIMAL(16,4) DEFAULT 0 COMMENT '主約表定保費含加費',
  `JOB_ID` CHARACTER(1) DEFAULT '' COMMENT '職業分類',
  `GS_POLICY_NO` VARCHAR(12) COMMENT '國寶幸福原保單號碼',
  PRIMARY KEY (`POLICY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='壽險主約投保紀錄';

CREATE TABLE IF NOT EXISTS `dtab0001_tc` (
  `POLICY_NO` VARCHAR(12) NOT NULL COMMENT '保單號碼',
  `PROD_ID` VARCHAR(3) DEFAULT '' COMMENT '險別',
  `ISSUE_DATE` DATE COMMENT '投保日期',
  `PAY_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '繳費年期',
  `POL_PRD` DECIMAL(3,0) DEFAULT 0 COMMENT '保險年期',
  `PAY_FREQ` DECIMAL(1,0) DEFAULT 0 COMMENT '繳別',
  `FACE_AMT` DECIMAL(16,4) DEFAULT 0 COMMENT '主約保額',
  `FACE_AMT_UNIT` DECIMAL(1,0) DEFAULT 0 COMMENT '保額單位',
  `MLY_PAY_DATE` DATE COMMENT '墊繳下次應繳日',
  `MNXT_PAY_DATE` DATE COMMENT '主約下次應繳日',
  `LST_PAY_DATE` DATE COMMENT '最近繳費日',
  `PAY_TIMES` DECIMAL(3,0) DEFAULT 0 COMMENT '主約繳費次數',
  `UN_CASH_TMS` DECIMAL(3,0) DEFAULT 0 COMMENT '票據未兌現次數',
  `DVD_KIND` DECIMAL(1,0) DEFAULT 0 COMMENT '紅利選擇',
  `LST_CHG_KIND` CHARACTER(6) DEFAULT '' COMMENT '最近異動種類',
  `LST_CHG_DATE` TIMESTAMP COMMENT '最近異動日期',
  `MED_EXAM` DECIMAL(1,0) DEFAULT 0 COMMENT '體檢別',
  `EFT_CODE` CHARACTER(2) DEFAULT '' COMMENT '契約效力',
  `PRCS_IND` CHARACTER(2) DEFAULT '' COMMENT '辦理表示',
  `RPRT_TMS` DECIMAL(2,0) DEFAULT 0 COMMENT '保單補發次數',
  `RPRT_DATE` DATE COMMENT '保單補發日期',
  `LPS_DATE` DATE COMMENT '停效日期',
  `AUTO_PREM_CODE` DECIMAL(1,0) DEFAULT 0 COMMENT '墊繳表示',
  `CLC_NO` CHARACTER(7) DEFAULT '' COMMENT '收費代號',
  `PRT_MRG_CODE` CHARACTER(1) DEFAULT '' COMMENT '保單合併碼',
  `APC_ID` VARCHAR(10) DEFAULT '' COMMENT '要保人ID',
  `INSD_ID` VARCHAR(10) DEFAULT '' COMMENT '被保人ID',
  `AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '投保年齡',
  `SEC_ISD_AGE` DECIMAL(3,0) DEFAULT 0 COMMENT '次被保人年齡',
  `EXT_YYMM` CHARACTER(4) DEFAULT '' COMMENT '延長期間',
  `PRE_PAY_IND` DECIMAL(1,0) DEFAULT 0 COMMENT '提前給付表示',
  `RTN_TSO` CHARACTER(1) DEFAULT '' COMMENT '生命表回饋方式',
  `SICK_Y` DECIMAL(2,0) DEFAULT 0 COMMENT '患病年度',
  `SEX` CHARACTER(1) DEFAULT '' COMMENT '被保人性別',
  `SETUP_DATE` DATE COMMENT '成立日期',
  `ANTY_PRD` DECIMAL(2,0) DEFAULT 0 COMMENT '年金保證期間／約定給付期間',
  `ANTY_PAY_DATE` DATE COMMENT '年金開始給付日',
  `ANTY_PAY_KIND` CHARACTER(1) DEFAULT '' COMMENT '年金給付方式',
  `SCRT_IND` CHARACTER(1) DEFAULT '' COMMENT '密戶表示',
  `SALE_CHNL` CHARACTER(1) DEFAULT '' COMMENT '銷售通路',
  `NB_APLY_NO` VARCHAR(12) DEFAULT '' COMMENT '新契約受理編號',
  `PREM_SPEC_KEY1` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位一',
  `PREM_SPEC_KEY2` VARCHAR(3) DEFAULT '' COMMENT '費率檔特有欄位二',
  `MAIN_PREM` DECIMAL(16,4) DEFAULT 0 COMMENT '主約表定保費含加費',
  `JOB_ID` CHARACTER(1) DEFAULT '' COMMENT '職業分類',
  `GS_POLICY_NO` VARCHAR(12) COMMENT '國寶幸福原保單號碼',
  PRIMARY KEY (`POLICY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='壽險主約投保紀錄';