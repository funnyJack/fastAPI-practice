create table if not exists user_info
(
    id             serial primary key,
    phone_number   varchar(11)  not null,
    current_amount int          not null,
    award       int          not null,
    gender         varchar(3)   not null,
    identifier     varchar(4)   not null,
    email       varchar(255) not null,
    referrer_id serial       not null
);
alter table user_info
    add constraint user_info_phone_number_pk
        unique (phone_number),
    add constraint user_info_email_pk
        unique (email);

create type company as ENUM ('TENCENT','NETEASE');
create table if not exists email_config
(
    key       varchar(255) primary key,
    email     varchar(255) not null,
    company   company      not null,
    auth_code varchar(255) not null
);

create table if not exists donation_application
(
    id               serial primary key,
    user_info_id     serial                      not null,
    serial           int                         not null,
    amount           int                         not null,
    application_time TIMESTAMP WITHOUT TIME ZONE not null,
    match_time       TIMESTAMP WITHOUT TIME ZONE
);
alter table donation_application
    add constraint donation_application_user_info_id_serial_pk
        unique (user_info_id, serial);

create table if not exists assistance_application
(
    id                      serial primary key,
    donation_application_id serial                      not null,
    application_time        TIMESTAMP WITHOUT TIME ZONE not null,
    match_time              TIMESTAMP WITHOUT TIME ZONE
);
alter table assistance_application
    add constraint assistance_application_donation_application_id_pk
        unique (donation_application_id);

insert into user_info
values (1, 13388883711, 0, 0, '贺', 1006, '554517318@qq.com');
insert into email_config
values ('emailRecipient.donationApplication', '554517318@qq.com', 'TENCENT', 'neptctxrqkbibdbf'),
       ('emailRecipient.assistanceApplication', '13388883711@163.com', 'NETEASE', 'VLTm9H6hgdia8NSy');
