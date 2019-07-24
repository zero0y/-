//引入express模块
const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();

//查询衣服列表
router.get('/reg',(req,res)=>{
var $dstore=req.query.dstore;
console.log(req.query);
console.log($dstore);
if(!$dstore){
res.send({code:500,msg:'uid为空'});
return;
}
pool.query('select * from hf_dress where dstore=?',[$dstore],(err,result)=>{
	if(err)throw err;
	if(result.length>0){
		res.send(result)
		}else{
		res.send('没有查出用户信息');
		}
	})
})

//导出路由器对象
module.exports=router;