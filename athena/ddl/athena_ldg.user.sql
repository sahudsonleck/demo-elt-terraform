CREATE EXTERNAL TABLE `user`(
	  `id` string, 
	  `data` struct<
	     gender:string,
	     name:struct<title:string>
	                > 
	  )
	ROW FORMAT SERDE 
	  'org.openx.data.jsonserde.JsonSerDe' 
	STORED AS INPUTFORMAT 
	  'org.apache.hadoop.mapred.TextInputFormat' 
	OUTPUTFORMAT 
	  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
	LOCATION
	  's3://demo.ingress.landing/'
	TBLPROPERTIES (
	  'has_encrypted_data'='false', 
  'transient_lastDdlTime'='1586991472')