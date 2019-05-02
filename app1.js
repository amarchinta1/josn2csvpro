const csvjson = require('csvjson');
const readFile = require('fs').readFile;
const writeFile = require('fs').writeFile;
const input = process.env.INPUT

if(!input)
{
console.log("Please Provide Environmetal variable");
process.exit(0);
}

readFile(input, 'utf-8', (err, fileContent) => {
    if (err) {
        console.log(err);
        throw new Error(err);
    }
    const csvData = csvjson.toCSV(fileContent, {
        headers: 'key'
    });
    writeFile('./out.csv', csvData, (err) => {
        if(err) {
            console.log(err); 
            throw new Error(err);
        }
        console.log('Please check your out.csv file ..Done!');
    });
});
