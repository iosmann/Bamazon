var mysql = require("mysql");
var prompt = require("prompt");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "Bamazon",
  socketPath: "/Applications/MAMP/tmp/mysql/mysql.sock"
});

connection.connect(function(err) {
  if (err) throw err;
  start();
});

function start (){
  connection.query("SELECT * FROM products ", function(err, results) {
    if (err) throw err;
    console.log (results)
    prompt.start();
    prompt.get (['id', 'quantity'], function (err,result) {
      console.log(result.id)
      console.log(result.quantity)
      var id = result.id
      var quantity = result.quantity
      connection.query ("SELECT * FROM products WHERE item_id = ?", id, function (err,results){
        console.log (results)
        if (!results.length){
          console.log ("Please pick item that exists")
        } else {
          if (results[0].stock_quantity >= quantity){
            var price = results[0].price 
            var totalPrice = price * quantity
            console.log (totalPrice)
            console.log ("purchase was successful total price is "+ totalPrice)
          } else {
            console.log ("not enough only " + results[0].stock_quantity + " availble" )
          }
        }
      }); 
    });
  }); 
    console.log("I am starting")
}