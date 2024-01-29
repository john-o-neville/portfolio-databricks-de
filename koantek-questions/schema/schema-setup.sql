-- Databricks notebook source
CREATE CATALOG IF NOT EXISTS koantek;

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS koantek.ordertracker;

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS koantek.ordertracker.customers (
  customer_id bigint,
  customer_name string,
  postal_address string,
  postcode string,
  country string,
  email_address string,
  mobile_number string,
  date_of_signup date,
  
  CONSTRAINT customers_pk PRIMARY KEY(customer_id)
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'customer_id, customer_name, postcode, country, email_address, mobile_number'
)
COMMENT 'Holds customer data from the source system'
CLUSTER BY (customer_name);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS koantek.ordertracker.products (
  product_id bigint,
  product_name string,
  product_cost decimal(12,4),
  
  CONSTRAINT products_pk PRIMARY KEY(product_id)
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'product_id, product_name'
)
COMMENT 'Holds product data from the source system'
CLUSTER BY (product_name);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS koantek.ordertracker.status (
  status_id int,
  status_code string,
  
  CONSTRAINT status_pk PRIMARY KEY(status_id)
)
COMMENT 'Holds a list of status codes, used as lookup data by multiple tables';

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS koantek.ordertracker.orders (
  order_id bigint,
  customer_id bigint,
  order_date date,
  invoice_number string,
  order_status int,
  
  CONSTRAINT orders_pk PRIMARY KEY(order_id),
  CONSTRAINT customers_orders_fk FOREIGN KEY (customer_id)
    REFERENCES koantek.ordertracker.customers (customer_id),
  CONSTRAINT status_orders_fk FOREIGN KEY (order_status)
    REFERENCES koantek.ordertracker.status (status_id)
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'order_id, customer_id, order_date, order_status'
)
COMMENT 'Holds order details from the source system'
CLUSTER BY (customer_id);

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS koantek.ordertracker.line_items (
  line_item_id bigint,
  order_id bigint,
  product_id bigint,
  cost_per_item decimal(12,4),
  discount decimal(12,4),
  quantity int,
  currency string,
  line_total decimal(12,4),
  line_status int,

  CONSTRAINT line_items_pk PRIMARY KEY(line_item_id),
  CONSTRAINT order_line_items_fk FOREIGN KEY (order_id)
    REFERENCES koantek.ordertracker.orders (order_id),
  CONSTRAINT product_line_items_fk FOREIGN KEY (product_id)
    REFERENCES koantek.ordertracker.products (product_id),
  CONSTRAINT status_line_items_fk FOREIGN KEY (line_status)
    REFERENCES koantek.ordertracker.status (status_id)
)
TBLPROPERTIES(
  'delta.dataSkippingStatsColumns' = 'line_item_id, order_id, product_id, line_total, line_status'
)
COMMENT 'Holds the line item details that link to orders'
CLUSTER BY (order_id);
