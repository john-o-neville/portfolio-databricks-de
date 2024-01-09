# Databricks notebook source
# MAGIC %md
# MAGIC ## Notebook to mark a file as processed by moving it to a different folder

# COMMAND ----------

# MAGIC %md ### Widgets
# MAGIC filename: the file to be imported (name only - the path is fixed)

# COMMAND ----------

dbutils.widgets.text(
    name='filename',
    defaultValue='',
    label='01 - Filename'
)

# COMMAND ----------

filename = dbutils.widgets.get('filename')

# COMMAND ----------

# MAGIC %md
# MAGIC ### Move file
# MAGIC Get a list of files in the raw directory and check if the filename exists there.  
# MAGIC If it does, then move it to processed.

# COMMAND ----------

raw_root = 'abfss://raw@portfoliolake01.dfs.core.windows.net'

processed_root = 'abfss://raw-processed@portfoliolake01.dfs.core.windows.net/'

# COMMAND ----------

found_files = dbutils.fs.ls(raw_root)

# COMMAND ----------

match_path = [
    f.path for f in found_files
    if f.name == filename
]

# COMMAND ----------

if (len(match_path) == 0):
    print('File not found')

# COMMAND ----------

if (len(match_path) > 0):
    dbutils.fs.mv(
        match_path[0],
        processed_root
    )
    
    print('File moved')
