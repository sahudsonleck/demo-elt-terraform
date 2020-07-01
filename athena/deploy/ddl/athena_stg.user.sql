CREATE EXTERNAL TABLE athena_stg.`user`(
	  `id` integer
	  )
	ROW FORMAT SERDE 
	  'org.openx.data.jsonserde.JsonSerDe' 
	STORED AS INPUTFORMAT 
	  'org.apache.hadoop.mapred.TextInputFormat' 
	OUTPUTFORMAT 
	  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
	LOCATION
	  's3://demo.ingress.staging/'
	TBLPROPERTIES (
	  'has_encrypted_data'='false', 
  'transient_lastDdlTime'='1586991472')