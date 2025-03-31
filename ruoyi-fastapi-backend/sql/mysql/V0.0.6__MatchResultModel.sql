create table if not exists match_result
(
    id                serial primary key,
    serial            int                         not null,
    donation_number   varchar(31)                 not null,
    amount            int                         not null,
    assistance_number varchar(31)                 not null,
    remark            varchar(15)                 not null,
    match_time        TIMESTAMP WITHOUT TIME ZONE not null
);
