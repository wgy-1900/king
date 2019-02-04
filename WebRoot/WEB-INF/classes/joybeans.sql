create database joybean;

//User
create table user(
t_id int auto_increment,
t_account varchar(20) unique not null,
t_pwd varchar(20) not null,
t_name varchar(20) not null,
t_num varchar(20) not null,
t_state varchar(20) not null,
t_role varchar(20) not null,
t_beans int not null,
t_huafei int not null,
t_createtime varchar(20),
constraint pk_user_id primary key(t_id)
)engine=innodb default charset=utf8;
insert into user values(null,'admin','123','admin','17512560518','正常','管理员',0,100,now());
insert into user values(null,'wgy','123','王光玉','12345678906','正常','普通用户',0,100,now());
insert into user values(null,'qqq','123','qqq','13456275462','暂停使用','普通用户',0,100,now());


create table gametype(
	t_id int auto_increment,
	t_name varchar(20),
	t_state varchar(20) not null,
	t_createtime varchar(20),
	t_updatetime varchar(20),
	unique(t_id),
	constraint pk_gametype_name primary key(t_name)	 
)engine=innodb default charset=utf8;
insert into gametype values(null,'射击类','商用',now(),now());
insert into gametype values(null,'棋牌类','商用',now(),now()),
(null,'休闲类','商用',now(),now()),
(null,'益智类','商用',now(),now()),
(null,'生存类','商用',now(),now());

create table game(
	t_id int auto_increment,
	t_name varchar(20) unique not null,
	t_type varchar(20) not null,
	t_detail  varchar(200) not null,
	t_pic varchar(20) not null,
	t_state varchar(20) not null,
	t_beanprice int not null,
	t_hfprice int not null,
	t_createtime varchar(20) not null,
	t_updatetime varchar(20) not null,
	constraint pk_g_id primary key(t_id),
	constraint fk_g_type foreign key(t_type) references gametype(t_name) 
)engine=innodb default charset=utf8;
insert into game values(null,'csgo','射击类','经典射击','//','商用',2,2,now(),now());


create table bean(
	t_id int auto_increment,
	t_province varchar(20) unique not null,
	t_price int ,
	t_createtime varchar(20) not null,
	t_updatetime varchar(20) not null,
	constraint pk_j_id primary key(t_id) 
)engine=innodb default charset=utf8;
insert into bean values(null,'江苏',2,now(),now());



