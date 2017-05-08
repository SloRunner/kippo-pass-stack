var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'kippo',
  password : 'Kippo-DB-pass',
  database : 'kippo'
});

//-------------------------GENERATOR CODE------------------------
connection.connect();
connection.query('select username, password from auth;', function(err, rows, fields) {
  if (!err){
	for (var i = rows.length - 1; i >= 0; i--) {
		console.log(rows[i].username + ':0:' + rows[i].password);
	};
  }else{
  	console.log('Error while performing Query.');
  };
});

connection.end();
//----------------------------END OF CODE------------------------