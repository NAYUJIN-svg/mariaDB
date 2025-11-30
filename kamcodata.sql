SHOW DATABASES;

DROP  TABLES kamco_data;

USE testdb;

CREATE TABLE public_data_raw (
    mnmt_no        VARCHAR(50)  PRIMARY KEY,  -- 물건관리번호
    cltr_nm        VARCHAR(100),             -- 물건명
    dpsl_mtd_cd    VARCHAR(10),              -- 처분방식코드
    nmrd_adrs      VARCHAR(255),             -- 물건 소재지
    pbct_begn_dtm  TIMESTAMP,                -- 공고 시작 일시
    pbct_end_dtm   TIMESTAMP,                -- 공고 종료 일시
    other_info     TEXT                       -- 기타 정보 컬럼
);

SELECT * FROM public_data_raw;

/*====================================================*/

CREATE TABLE public_data_by_mnmt_no AS
SELECT *
FROM public_data_raw
WHERE mnmt_no IS NOT NULL
GROUP BY mnmt_no;

SELECT * FROM public_data_by_mnmt_no;

/*===================================================*/

CREATE TABLE public_data_by_cltr_nm AS
SELECT *
FROM public_data_raw
WHERE cltr_nm IS NOT NULL
GROUP BY cltr_nm;

SELECT * FROM public_data_by_cltr_nm;

/*=================================================*/