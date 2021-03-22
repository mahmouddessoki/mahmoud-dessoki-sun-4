relationships
1.many to one (products and suppliers)
2.many to many (products and stores)

//database creation

create database store_management collate 'utf8mb4_unicode_ci'

//create store table

create table stores(
    id integer unsigned unique not null auto_increment,
    name varchar(255) unique not null,
    address varchar(255) not null,
    gov_id integer unsigned unique not null,
    primary key(id),
    foreign key(gov_id) references governorates(id)
)
//create governorates table 
create table governorates(
    id integer unsigned unique not null auto_increment,
    name varchar(255) unique not null

)
// create supplier table
create table suppliers(
    id integer unsigned unique not null auto_increment,
    name varchar(255) unique not null,
    phone varchar(255) unique not null,
    email varchar(255) not null,
    brief_data text,
    primary key(id)
)

//create products table

create table products(
    id integer unsigned unique not null auto_increment,
    supplier_id integer unsigned unique not null,
    product_id integer unsigned unique not null,
    name varchar(255) unique not null,
    code varchar(255) unique not null,
    price decimal(10,2) unsigned not null,
    description text,
    primary key(id),
    foreign key(supplier_id) references suppliers(id),
    foreign key(product_id) references products(id)

)

create table product_store(
    product_id integer unsigned unique not null,
    stores_id integer unsigned unique not null,
    primary key(product_id,stores_id),
    foreign key(stores_id) references stores(id),
    foreign key(product_id) references products(id)

)

