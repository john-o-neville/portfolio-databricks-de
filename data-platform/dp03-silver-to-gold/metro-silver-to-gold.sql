-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE metro_statement
(
  date_key DATE,
  tran_details STRING,
  tran_type STRING,
  tran_amount DECIMAL(12,4),
  balance DECIMAL(12,4)
)
COMMENT 'The Fact table for metro_statements'
AS
SELECT
  ME.tran_date AS date_key,
  ME.tran_details,
  ME.tran_type,
  ME.tran_amount,
  ME.balance
FROM
  silver.enriched.metro_enriched AS ME;
