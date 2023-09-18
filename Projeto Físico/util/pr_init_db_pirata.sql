create or replace procedure pr_init_db_pirata is
begin
  exec pr_drop_all_tables
  exec pr_init_all_tables
  exec pr_init_proc
  exec pr_insert_data
  exec pr_init_all_constraint
end;