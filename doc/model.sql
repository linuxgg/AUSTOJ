use phonecollectiondb;
 
--查询非重复手机model个数
select count(distinct model)  from phonedetails  ;