// Requiring the module
const express = require('express');
const app = express();

// Route handling
app.get('/', (req, res) => {
	res.send('<h2>Hello from Express.js server!!</h2>');
});

// Server setup
app.listen(8080, () => {
	console.log('server listening on port 8080');
});




// Requiring the module
const http = require('http');

// Creating server object
const server = http.createServer((req, res) => {
	res.setHeader('Content-Type', 'text/html');
	res.write('<html>');
	res.write('<head><title>GeeksforGeeks</title><head>');
	res.write('<body><h2>Hello from Node.js server!!</h2></body>');
	res.write('</html>');
	res.end();
});

// Server setup
server.listen(3000, ()=> {
	console.log("Server listening on port 3000")
});
