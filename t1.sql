if not exists(select * from sys.columns where object_id = object_id('mhsecurity.snapshot') and name in('col1','col2')
alter table mhsecurity.snapshot
add constraint const1 /*col1 int
, col2 int, col3 varchar(100)
*/
go
