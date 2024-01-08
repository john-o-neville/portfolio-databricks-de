-- Databricks notebook source
-- databases

CREATE CATALOG IF NOT EXISTS bronze;

CREATE CATALOG IF NOT EXISTS silver;

CREATE CATALOG IF NOT EXISTS gold;

-- COMMAND ----------

-- bronze

CREATE SCHEMA IF NOT EXISTS bronze.raw;


-- COMMAND ----------

-- silver

CREATE SCHEMA IF NOT EXISTS silver.cleaned;

CREATE SCHEMA IF NOT EXISTS silver.enriched;

