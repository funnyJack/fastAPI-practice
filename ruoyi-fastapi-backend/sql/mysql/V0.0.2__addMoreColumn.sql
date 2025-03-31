alter table assistance_application
    add amount int not null default 0;

alter table user_info
    add award_match_time TIMESTAMP WITHOUT TIME ZONE;

alter table donation_application
    add pre_payment int not null default 0;
