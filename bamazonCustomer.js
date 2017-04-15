var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "Bamazon"
});



// connection.connect(function(err) {
//   if (err) throw err;
//   console.log("connected as id " + connection.threadId);
// });

var printProducts = function() {
	connection.query("SELECT * FROM products", function(err, res) {
	  if (err) throw err;
	  // console.log(res);
	  console.log(typeof res);
	  for(var i = 0; i < res.length; i++) {
	  	console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].price);
	  }
	  console.log("-----------------------------------");

	  ///
	  getUserInput();
	});	
}



/*
The app should then prompt users with two messages.
The first should ask them the ID of the 
product they would like to buy.
The second message should ask how 
many units of the product they would like to buy.
*/

var getUserInput = function() {

	inquirer.prompt([
		{
			name: "id",
			type: "input",
			message: "What's the ID of the product you'd like to buy?"
		}
	]).then(function(answer){
		console.log(answer);
	});

}






printProducts();






