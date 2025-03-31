create table if not exists upgrade_application
(
    id               serial primary key,
    user_info_id     serial                      not null,
    application_time TIMESTAMP WITHOUT TIME ZONE not null,
    origin_amount    int                         not null,
    current_amount   int                         not null
);
