//引入mysql模块
const mysql=require('mysql');
//创建连接池对象
var pool=mysql.createPool({
	host:'127.0.0.1',
	post:'3306',
	user:'root',
	password:'',
	database:'hf',
	connectionLimit:20  //默认为15
});
//导出连接池对象
module.exports=pool;