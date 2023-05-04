create table if not exists t_sys_file_info
(
    id             bigint auto_increment
        primary key,
    bucket_name    varchar(255) null,
    create_time    datetime     null,
    create_user_id bigint       null,
    file_byte_size int          null,
    file_name      varchar(255) null,
    file_path      varchar(255) null,
    file_type      varchar(255) null,
    shared_flag    bit          null,
    upload_time    datetime     null
);

create table if not exists t_sys_permissions
(
    id      bigint auto_increment
        primary key,
    name    varchar(128) not null,
    role_id bigint       not null
);

create table if not exists t_sys_roles
(
    id           bigint auto_increment
        primary key,
    name         varchar(64)   not null,
    display_name varchar(64)   not null,
    version      int default 0 not null
);

create table if not exists t_sys_users
(
    id            bigint auto_increment
        primary key,
    user_name     varchar(256) not null,
    password      varchar(128) not null,
    name          varchar(64)  not null,
    email_address varchar(256) not null,
    phone_number  varchar(32)  null
);

create table if not exists t_sys_user_roles
(
    id      bigint auto_increment
        primary key,
    user_id bigint null,
    role_id bigint null,
    constraint FK26q79urswad4kq9nww0jlusnh
        foreign key (role_id) references t_sys_roles (id)
            on delete cascade,
    constraint FK4qd58k06shiwb9r32vs544a7d
        foreign key (user_id) references t_sys_users (id)
            on delete cascade
);


