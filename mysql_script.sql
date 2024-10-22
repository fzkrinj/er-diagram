
create table "role"
(
  role_id serial primary key,
  role_name varchar(100) not null
);
create table "user"
(
  user_id serial primary key,
  user_surname varchar(100) not null,
  user_name varchar(100) not null,
  user_patronymic varchar(100) not null,
  user_login text not null,
  user_password text not null,
  user_role int not null,
  foreign key (user_role) references role(role_id) 
);
create table "papoint"
(
  papoint_id serial primary key,
  papoint_index int not null,
  papoint_city text not null,
  papoint_street text not null 
);
create table "statusord"
(
  statusord_id serial primary key not null,
  statusord_name text not null
);
create table "order"
(
  order_id serial primary key,
  order_sostav text not null,
  order_date date not null,
  order_deliverydate date not null,
  order_papoint int not null,
  order_username int not null,
  order_codeforget serial not null,
  order_status int not null,
  foreign key (order_papoint) references papoint(papoint_id),
  foreign key (order_username) references "user"(user_id),
  foreign key (order_status) references statusord(statusord_id)
);

