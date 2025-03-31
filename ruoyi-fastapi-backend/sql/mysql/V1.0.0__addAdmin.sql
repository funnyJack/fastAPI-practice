create table if not exists admin
(
    id       serial primary key,
    oauth_id VARCHAR(31) not null,
    name     VARCHAR(31) not null
);

insert into admin(oauth_id, name)
values (171426310, 'funnyJackPeng');
