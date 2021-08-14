
-- создаем таблицу users
drop table if exists users;
create table users (
-- admin bit default 1 if users.id <2
	id serial primary key,
	firstname VARCHAR(255)  not null,
	lastname VARCHAR(255)  not null,
	phone bigint unsigned not null unique,
	email varchar(255)  not null unique,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Информация о Пользователе';

drop table if exists profiles;
create table profiles (
	user_id serial primary key,
	address varchar (255), 
	age int unsigned,
	foreign key (user_id) references users(id)
) COMMENT 'Расширенная информация о пользователе';

 drop table if exists category;
 create table category (
 	id serial primary key,
 	name varchar(255) not null
 ) COMMENT 'Категории товаров';

 drop table if exists products;
 create table products (
  	id serial primary key,
 	name varchar(255) not null,		-- возможно надо text
 	pieces bigint not null,			-- всего штук в наличии
 	cost decimal(19,4) not null,	-- цена, указываемая на сайте для продажи
 	currency enum('rub', 'usd', 'euro') not null,
	description text not null 		-- описание товара
 ) COMMENT 'Вся информация о товаре';

 drop table if exists category_product;
 create table category_product (
 	category_id BIGINT UNSIGNED NOT null,
 	product_id BIGINT UNSIGNED NOT null,
  	PRIMARY KEY (category_id, product_id),
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
 ) COMMENT 'Категории_товары';

 
drop table if exists productcard;
create table productcard (
	product_id BIGINT UNSIGNED NOT null,
	ad_info TEXT,
	code_google_ads bigint,
	code_yandex_ads bigint,
	foreign key (product_id) references products(id)
) COMMENT 'Карточка товара на сайте, выдергивающая основные данные из product';

drop table if exists cart;
create table cart (
	id serial primary key,
	user_id BIGINT UNSIGNED NOT null,
	product_id BIGINT UNSIGNED NOT null,
	foreign key (product_id) references products(id),
	foreign key (user_id) references users(id)
) COMMENT 'Корзина покупок пользователя';


drop table if exists discounts;
create table discounts (
	id serial primary key,
	product_id BIGINT UNSIGNED NOT null,  -- id товара на который действует скидка
	name varchar(255),	
	discount int unsigned default 0, --  размер скидки
	created_at datetime default now(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	end_at DATETIME default 0, -- дата окончания действия скидки
	foreign key (product_id) references products(id)
) COMMENT 'Cкидки на товар';


drop table if exists events;
create table events (
	id serial primary key,
	product_id BIGINT UNSIGNED NOT null,
	name varchar(255) not null,	
	eventdiscount int unsigned default 0, --   размер скидки по акции
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	end_at DATETIME default 0, -- дата окончания действия скидки
	foreign key (product_id) references products(id)
) COMMENT 'Маркетинговые акции - отдельный вид скидок';

drop table if exists answerpayment;
create table answerpayment (
	id serial primary key,
	cart_id BIGINT UNSIGNED NOT null,
	user_id BIGINT UNSIGNED NOT null,
	paid bool default 0,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	foreign key (cart_id) references cart(id),
	foreign key (user_id) references users(id)
) COMMENT 'Ответ платежной системы';

drop table if exists paidproduct;
create table paidproduct (
	id serial primary key,
	cart_id BIGINT UNSIGNED NOT null,
	user_id BIGINT UNSIGNED NOT null,
	answerpayment_id BIGINT UNSIGNED NOT null,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	foreign key (cart_id) references cart(id),
	foreign key (user_id) references users(id),
	foreign key (answerpayment_id) references answerpayment(id)	
) COMMENT 'Оплаченный товар';

