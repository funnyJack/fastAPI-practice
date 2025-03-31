alter table user_info
    rename column point to total_point;

alter table user_info
    add donation_point int not null default 0;

alter table user_info
    add gift_point int not null default 0;

alter table user_info
    add award_point int not null default 0;

alter table assistance_application
    add point int not null default 0;
