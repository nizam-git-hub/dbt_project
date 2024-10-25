select host_id, name, is_superhost from dev.stg_hosts;

select {{generate_columns()}}
from  dev.stg_hosts;

select {{single(100)}};


select {{multiple(100, 2)}} ;


select {{sql_fun('name', 'is_superhost')}} as cons
from dev.stg_hosts;

select * from dev.stg_hosts;

number - single quote not required 
column, str - single quote mandatory;


select {{ ifs('Black') }} ;

Yes, You are selected Green;