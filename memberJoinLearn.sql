create table user (
    user_no     int not null auto_increment primary key,
    user_id     varchar(20) not null unique,
    user_pw     varchar(20) not null,
    user_name   varchar(20) not null,
    company_name    varchar(50) not null
);