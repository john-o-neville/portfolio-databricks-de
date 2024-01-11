# Databricks notebook source
from datetime import datetime
from pyspark.sql.functions import col, expr, date_format, year, month, day, quarter, weekofyear, dayofweek

# COMMAND ----------

# MAGIC %md
# MAGIC ### Widgets

# COMMAND ----------

dbutils.widgets.text(
    name='start_year',
    defaultValue='2010',
    label='01 - Start Year'
)

dbutils.widgets.text(
    name='end_year',
    defaultValue='2029',
    label='02 - End Year'
)

# COMMAND ----------

start_year = dbutils.widgets.get('start_year')
end_year = dbutils.widgets.get('end_year')

# COMMAND ----------

# MAGIC %md
# MAGIC ### Start and End Years

# COMMAND ----------

startdate = datetime.strptime(f'{start_year}-01-01', '%Y-%m-%d')
enddate = datetime.strptime(f'{end_year}-12-31', '%Y-%m-%d')

# COMMAND ----------

day_in_secs = int(60 * 60 * 24)

# COMMAND ----------

core_df = (
    spark.range(
        start=int(startdate.timestamp()), 
        end=int(enddate.timestamp()), 
        step=day_in_secs
    )
    .select(
        col("id").cast("timestamp").cast("date").alias("date_key")
    )
)

# COMMAND ----------

# MAGIC %md
# MAGIC ### Add calculated fields

# COMMAND ----------

enriched_df = (
    core_df
    .withColumn('date_id', expr('cast(date_format(date_key, "yyyyMMdd") AS INT)'))
    .withColumn('year', year('date_key'))
    .withColumn('quarter', quarter('date_key'))
    .withColumn('month', month('date_key'))
    .withColumn('day', day('date_key'))
    .withColumn('week_of_year', weekofyear('date_key'))
    .withColumn('quarter_name', date_format('date_key', 'QQQ'))
    .withColumn('month_fullname', date_format('date_key', 'MMMM'))
    .withColumn('month_name', date_format('date_key', 'MMM'))
    .withColumn('month_string', date_format('date_key', 'MM'))
    .withColumn('year_month', date_format('date_key', 'yyyy-MM'))
    .withColumn('day_of_week', dayofweek('date_key'))
    .withColumn('day_of_month', date_format('date_key', 'd'))
    .withColumn('day_of_year', date_format('date_key', 'D'))
    .withColumn('day_string', date_format('date_key', 'dd'))
    .withColumn('day_fullname', date_format('date_key', 'EEEE'))
    .withColumn('day_name', date_format('date_key', 'EEE'))
)

# COMMAND ----------

# MAGIC %md
# MAGIC ### Store to Silver

# COMMAND ----------

(
    enriched_df
    .write
    .format('delta')
    .mode('overwrite')
    .saveAsTable('silver.enriched.date_dimension')
)
