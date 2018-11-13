declare @cnt int
select * from [HumanResources].[Employee1]
select @cnt=@@rowcount

select t.text from sys.dm_exec_query_stats s
cross apply sys.dm_exec_sql_text(s.sql_handle) t
where t.text like '%Employee%'

dbcc FREEPROCCACHE()


truncate table [HumanResources].[Employee1]
