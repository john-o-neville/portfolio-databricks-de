-- Databricks notebook source
-- bronze.raw.metro_statement
CREATE TABLE IF NOT EXISTS bronze.raw.metro_statement (
  tran_date STRING,
  tran_details STRING,
  tran_type STRING,
  amount_in STRING,
  amount_out STRING,
  balance STRING,
  -- metadata
  meta_sourcefilename STRING NOT NULL,
  meta_createdtimestamp TIMESTAMP NOT NULL
);
