//To  command 
//INPUT=./sample.sh OUTPUT=./out.txt node app.js


const csvjson = require('csvjson');
const readFile = require('fs').readFile;
const writeFile = require('fs').writeFile;
const output = process.env.OUTPUT
const input = process.env.INPUT
console.log(input);
console.log(output);

var child_process= require('child_process').exec;

if (!input) {
    console.log("Please provide input file :!!");
    process.exit(0);
}

child_process(input,{ maxBuffer : 5000 * 5000}, function(err,stdout){

if(err)
{
console.log("Error",err);
}
var jsondata = stdout;
const csvdata=csvjson.toCSV(stdout,{

headers:'key'

});
writeFile(output,csvdata,function(err){
if(err)
{
console.log(err);
throw new Error(err);
}

console.log("Please check you output file");

});

});
