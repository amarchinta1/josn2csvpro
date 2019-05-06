var child_process= require('child_process').exec;

child_process("./sample.sh",(err,stdout)=>{
if(err)
{
console.log("err",err);
process.exit(0);
}
//console.log(stdout);
var jsondata= stdout;

console.log(jsondata);
});


