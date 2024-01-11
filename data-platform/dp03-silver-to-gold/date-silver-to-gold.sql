-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE dim_date
COMMENT 'Refreshes date dimension data in Gold layer'
AS
SELECT
  DD.date_key,
  DD.date_id,
  DD.year,
  DD.quarter,
  DD.month,
  DD.day,
  DD.week_of_year,
  DD.quarter_name,
  DD.month_fullname,
  DD.month_name,
  DD.month_string,
  DD.year_month,
  DD.day_of_week,
  DD.day_of_month,
  DD.day_of_year,
  DD.day_string,
  DD.day_fullname,
  DD.day_name
FROM
  silver.enriched.date_dimension AS DD;
