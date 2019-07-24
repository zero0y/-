//引入express模块
const express=require('express');
//引入body-parser
const bodyParser=require('body-parser');
//引入路由器对象
const userRouter=require('./router/store.js');
//创建服务器
var server=express();
//设置端口
server.listen(8080);
//将静态资源托管到public下
server.use(express.static('public'));
//使用body中间件，将post请求格式化为对象
server.use(bodyParser.urlencoded({
   extended:false  
})); 
//使用路由文件
server.use('/store',userRouter)