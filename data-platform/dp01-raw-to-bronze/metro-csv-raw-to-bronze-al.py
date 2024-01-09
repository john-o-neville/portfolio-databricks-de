# Databricks notebook source
# Note: this is the same Notebook as "metro-csv-raw-to-bronze" but instead uses AutoLoader to watch the Azure Folder

# COMMAND ----------

from typing import NamedTuple
from pyspark.sql.functions import col, input_file_name, current_timestamp

# COMMAND ----------

import_timestamp = current_timestamp()

# COMMAND ----------

# MAGIC %md ### Renaming
# MAGIC This code is used for bulk renaming of columns by using metadata.
# MAGIC
# MAGIC In this instance the metadata is held inline in the Notebook.  But it could just as easily be held in external YAML files or a database.

# COMMAND ----------

class ColRename(NamedTuple):
    old_name: str
    new_name: str

# COMMAND ----------

renames = [
    ColRename('Date', 'tran_date'),
    ColRename('Details', 'tran_details'),
    ColRename('Transaction Type', 'tran_type'),
    ColRename('In', 'amount_in'),
    ColRename('Out', 'amount_out'),
    ColRename('Balance', 'balance')
]

# COMMAND ----------

renamed_cols = [
    col(c.old_name).alias(c.new_name) 
    for c in renames
]

# COMMAND ----------

# MAGIC %md ### Extract
# MAGIC Read the data from the source files

# COMMAND ----------

# TODO: write the cloudFiles query here


# COMMAND ----------

# MAGIC %md ### Transform
# MAGIC 1) Rename the columns
# MAGIC 2) Add metadata

# COMMAND ----------

renamed_df = (
    raw_df
    .select(*renamed_cols)
)

# COMMAND ----------

metadata_df = (
    renamed_df
    .withColumn('meta_sourcefilename', input_file_name())
    .withColumn('meta_createdtimestamp', import_timestamp)
)

# COMMAND ----------

# MAGIC %md ### Load
# MAGIC Write to the Bronze table

# COMMAND ----------

(
    metadata_df
    .write
    .format('delta')
    .mode('append')
    .saveAsTable('bronze.raw.metro_statement')
)
