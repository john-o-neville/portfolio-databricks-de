-- Databricks notebook source
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
    ELSE CAST(MC.amount_out * -1 AS DECIMAL(12,4))
  END AS tran_amount,
  MC.balance
FROM
  live.metro_cleaned AS MC;
