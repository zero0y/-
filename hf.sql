
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS hf;
#创建数据库
CREATE DATABASE hf CHARSET=UTF8;
#进入该数据库
USE hf;
#创建储存汉服的数据表
CREATE TABLE hf_dress(
  did int  PRIMARY KEY AUTO_INCREMENT,   #衣服编号
  dname varchar(16) UNIQUE,              #衣服名称
  dtime date,                            #衣服上架时间
  dsell boolean,                         #衣服是否在售
  dstore varchar(16),                    #衣服所属店铺
  ddesc text(200),                       #衣服描述
  dimg  varchar(32)                      #衣服图片

);
#插入数据
INSERT INTO hf_dress VALUES(null,"小狐狸","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg"),
(null,"小狐","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg"),
(null,"小狸","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg");

#梨花渡
INSERT INTO hf_dress VALUES(null,"小狐狸","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg"),
(null,"小狐","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg"),
(null,"小狸","2019-05-25",1,2,"小狐狸","img/lyxl/xhl.jpg");

#十三余
INSERT INTO hf_dress VALUES(null,"婴宁","2019-05-25",1,13,"小狐狸","img/13yu/yn.jpg"),
(null,"婴宁01","2019-05-25",1,13,"聊斋","img/13yu/yn01.jpg"),
(null,"花神祭","2019-07-25",1,13,"花神的衣服","img/13yu/dfym.jpg");

#查询数据
select * from hf_dress;