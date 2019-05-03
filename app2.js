var child_process= require('child_process').exec;

child_process("./sample.sh",function(err,stdout){

if(err)
{
console.log("err",err);
process.exit(0);
}
console.log("Result",stdout);

});



