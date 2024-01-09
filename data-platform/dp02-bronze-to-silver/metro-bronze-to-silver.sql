-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE metro_cleaned (
    CONSTRAINT valid_date EXPECT (tran_date IS NOT NULL)
) 
COMMENT 'Cleaned Metro account data'
AS
SELECT
  ms_uq.tran_date,
  ms_uq.tran_details,
  ms_uq.tran_type,
  ms_uq.amount_in,
  ms_uq.amount_out,
  ms_uq.balance
FROM
  (
    SELECT
      TO_DATE(MS.tran_date, 'dd/mm/yyyy') AS tran_date,
      MS.tran_details,
      MS.tran_type,
      CAST(MS.amount_in AS DECIMAL(12,4)) AS amount_in,
      CAST(MS.amount_out AS DECIMAL(12,4)) AS amount_out,
      CAST(MS.balance AS DECIMAL(12,4)) AS balance,
      -- de-dup the rows
      ROW_NUMBER() OVER(
        PARTITION BY MS.tran_date, MS.balance
        ORDER BY MS.meta_sourcefilename
      ) AS row_num
    FROM
      bronze.raw.metro_statement AS MS
  ) AS ms_uq
WHERE
  ms_uq.row_num = 1;

-- TODO: only take the newest data (change data feed?)
-- https://learn.microsoft.com/en-gb/azure/databricks/delta/delta-change-data-feed

-- COMMAND ----------

    SELECT
      TO_DATE(MS.tran_date, 'dd/mm/yyyy') AS tran_date,
      MS.tran_details,
      MS.tran_type,
      CAST(MS.amount_in AS DECIMAL(12,4)) AS amount_in,
      CAST(MS.amount_out AS DECIMAL(12,4)) AS amount_out,
      CAST(MS.balance AS DECIMAL(12,4)) AS balance,
      -- de-dup the rows
      ROW_NUMBER() OVER(
        PARTITION BY MS.tran_date, MS.balance
        ORDER BY MS.meta_sourcefilename
      ) AS row_num
    FROM
      bronze.raw.metro_statement AS MS
