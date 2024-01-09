-- Databricks notebook source
SET minus_1 = CAST(-1 AS DECIMAL(12,4));

-- COMMAND ----------

CREATE OR REFRESH LIVE TABLE metro_enriched
(
  tran_date DATE,
  tran_details STRING,
  tran_type STRING,
  tran_amount DECIMAL(12,4),
  balance DECIMAL(12,4)
)
COMMENT 'Enriches the data from metro_cleaned'
AS
SELECT
  MC.tran_date,
  MC.tran_details,
  MC.tran_type,
  CASE
    WHEN MC.amount_in IS NOT NULL THEN MC.amount_in
    ELSE MC.amount_out * ${minus_1}
  END AS tran_amount,
  MC.balance
FROM
  live.metro_cleaned AS MC;
