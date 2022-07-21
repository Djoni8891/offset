create sequence Personal_Area_id;
create table Personal_Area
(
id int not null default nextval ('Personal_Area_id')primary key,
first_name varchar,
last_name varchar, 
password varchar, 
email varchar,     
balance real
);
insert into Personal_Area  (first_name,last_name,password,email,balance)
values
('Артур',' Зорин','aiweJ1','Зорин@gmail.com','450'),               
('Максим','Кузнецов','nC2MPp','Максим.куз@mail.ru','100'),     
('Матвей','Филатов','ZQ8VTi', 'Филатов@gmai.ru','0'),      
('Елизавета','Максимова','R2PsK5','Елиз@gmail.com','2100'),      
('Валерия','Селезнева','kO3FaQ', 'Селезнева@inbox.com','70');      



create sequence subscription_system_id;
create table subscription_system(
id int not null default nextval('subscription_system_id')primary key,
paids varchar,
price_paids real,
is_free varchar,
term_days varchar
);
insert into subscription_system (paids,price_paids,is_free,term_days)
values
('Netflix','150','Rutube','30'),
('Google Play','180','Megogo','30'),
('TVzavr','300','Okko','30'),
('Амедиатека','799','Интерактивное ТВ','60'),
('iTunes','1099','ivi.ru','100');


create sequence Movies_id;
create table Movies(
id int not null default nextval('Movies_id')primary key,
movie_name varchar,
year_of_issue varchar,
genre varchar,
director varchar,
duration real,
country varchar,
comments text
);
insert into Movies(movie_name,year_of_issue,genre,director,duration,country,comments)
values
('Апокалипсис сегодня','1979','драмма','Фрэнсис Форд Коппола','194','США','хороший фильм'),
('Бемби','1942','мультфильм','Джеймс Элгар','72','США','мило'),
('Турецкий гамбит','2005','боевик','Джаник Файзиев','130','Россия','филь на уровне'),
('Брат','1997','криминал','Алексей Балабанов','100','Россия',';изненный'),
('Огонь','2020','драмма','Алексей Нужный','131','Россия','огонь');

create sequence news_id;
create table news(
id int not null default nextval('news_id')primary key,
name_News text,
Description_News text
);
insert into news (name_News,Description_News)
values
('Мортал Комбат','Режиссер снимет продолжение фантастического боевика'),
('Назван гонорар Дуэйна Джонсона за фильм "Черный Адам','Источники утверждают, что гонорар Джонсона составил 22,5 миллиона долларов'),
('Квиддич из "Гарри Поттера','Игру переименовали из-за комментариев Джоан Роулинг'),
('Курт Рассел и Уайатт Рассел снимутся в сериале Apple о Годзилле и Титанах','Отец и сын присоединятся к Legendary MonsterVerse'),
('Фильм "Добыча','Что ожидать от маленького Хищника в новой маске');

create sequence movie_site_id;
create table movie_site(
id int not null default nextval('movie_site_id')primary key,
news int references news(id),
Movies int references Movies(id),
subscription_system int references subscription_system(id),
Personal_Area int references Personal_Area(id)
);


create table signed(
id serial,
name varchar,
balance real);

insert into signed(name,balance)
values
('igor',(select balance from Personal_Area
where first_name = 'Елизавета' limit 1 ));





