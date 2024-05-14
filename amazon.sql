CREATE DATABASE IF NOT EXISTS amazon;
USE amazon;

create table amazon(
    amazon_id varchar(10) primary key,
    URL varchar(100),
    manufacturer varchar(100),
    title varchar(300),
    ASIN varchar(20)    
    );
    
ALTER TABLE amazon
ADD FOREIGN KEY (ASIN) REFERENCES product(ASIN);
    

create table product(
    ASIN varchar(20) primary key,
    gender varchar(20),
    rating float,
    price float,
    description text,
    brandNAme varchar(255),
    colors varchar(2500),
     cat_id varchar(10),
     image_id varchar(10),
     rev_id varchar(10)
    );
    
    
ALTER TABLE product
ADD FOREIGN KEY (cat_id) REFERENCES category(cat_id);
ALTER TABLE product
ADD FOREIGN KEY (image_id) REFERENCES images(image_id);
ALTER TABLE product
ADD FOREIGN KEY (rev_id) REFERENCES reviews(rev_id);

create table category(
    cat_id varchar(10) primary key,
    category varchar(60),
    subCategory varchar(60));

create table images(
    image_id varchar(10) primary key,
    color_images varchar(5000),
    images varchar(1500));

create table reviews(
    rev_id varchar(10) primary key,
    review_texts text);