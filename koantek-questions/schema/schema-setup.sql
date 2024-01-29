-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Homework Task
-- MAGIC Design a data model for this scenario. Customers place orders.  
-- MAGIC Each order will have multiple line items for different products, quantities, and status.  
-- MAGIC When the complete order is delivered marked as Completed.  
-- MAGIC Also track status at Item level
-- MAGIC
-- MAGIC Nouns:
-- MAGIC - Customer
-- MAGIC - Order
-- MAGIC - Line Items
-- MAGIC - Product
-- MAGIC - Status
-- MAGIC
-- MAGIC #### ER diagram
-- MAGIC ![ER diagram](files/coding_exercise_drawio.png)

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS ordertracker;

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS ordertracker.customers (
  customer_id bigint,
  customer_name string,
  postal_address string,
  postcode string,
  country string, -- IMPROVE: make this a lookup table of ISO countries
  email_address string,
  mobile_number string,
  date_of_signup date
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'customer_id, customer_name, postcode, country, email_address, mobile_number'
)
COMMENT 'Holds customer data from the source system'
CLUSTER BY (customer_name);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS ordertracker.products (
  product_id bigint,
  product_name string,
  product_cost decimal(12,4)
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'product_id, product_name'
)
COMMENT 'Holds product data from the source system'
CLUSTER BY (product_name);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS ordertracker.status (
  status_id int,
  status_code string
)
COMMENT 'Holds a list of status codes, used as lookup data by multiple tables';

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS ordertracker.orders (
  order_id bigint,
  customer_id bigint,
  order_date date,
  invoice_number string,
  order_status int
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'order_id, customer_id, order_date, order_status'
)
COMMENT 'Holds order details from the source system'
CLUSTER BY (customer_id);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS ordertracker.line_items (
  line_item_id bigint,
  order_id bigint,
  product_id bigint,
  cost_per_item decimal(12,4),
  discount decimal(12,4),
  quantity int,
  currency string, -- IMPROVE: make this a lookup of ISO currencies
  line_total decimal(12,4),
  line_status int
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'line_item_id, order_id, product_id, line_total, line_status'
)
COMMENT 'Holds the line item details that link to orders'
CLUSTER BY (order_id);
