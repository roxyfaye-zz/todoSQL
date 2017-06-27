CREATE TABLE todos (
    id serial primary key,
    title varchar (255) not null,
    details text,
    priority int not null default 1,
    created_at timestamp not null default now(),
    completed_at  timestamp null);

insert into todos ( title, details, priority)

values ('update resume', 'add new data', '5'),
    ('email Julie for photos', 'these photos will be for my website', '4'),
    ('update linkedin summary', '1', 'Stick to 3-5 short paragraphs .Your summary is the place to share who you are and what makes you great, but it’s not the place to list everything you’ve ever done.', '3'),
    ('week 1 weekly','set it up and get it done', '1');

insert into todos (title, details, priority, completed_at)    
     ('read lynchpin', 'write a blog about it', '1', 2017-06-19 3:33:01)
   
select title from todos where completed_at is null;

select title from todos order by priority desc limit 2;

update todos set completed_at =  now() where id = 1;

delete from todos where id is null;
