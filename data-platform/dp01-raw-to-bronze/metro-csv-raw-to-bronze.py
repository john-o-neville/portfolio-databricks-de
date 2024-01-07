# Databricks notebook source
# read the file in bronze
df = (
    spark.read
    .format('csv')
    .option('header', 'true')
    .load('abfss://raw@portfoliolake01.dfs.core.windows.net/2023-01 Transactions_Export_Jan_2023_11712053.csv')
)


# COMMAND ----------

# add metadata columns
df.display()

# COMMAND ----------

# write to Raw

# COMMAND ----------

# Q: would this be better using Auto Loader?
# https://learn.microsoft.com/en-us/azure/databricks/ingestion/auto-loader/

