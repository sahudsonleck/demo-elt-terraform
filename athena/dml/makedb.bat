echo a_athena_stg_d.yaml
aws athena create-named-query  --name "e_user_stg_d" --database "athena_stg" --query-string "drop table user;"
echo e_athena_ldg_i.yaml
aws athena create-named-query  --name "e_user_stg_i" --database "athena_ldb" --query-string "create table athena_stg.user as select cast(id as integer) as id from athena_ldg.user;"
