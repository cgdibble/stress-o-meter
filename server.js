var http = require('http');
var serverPort = 8000;

http.createServer(function(req, res) {
	res.writeHead(200, {'Content-Type': 'text/plain'});
	res.end('Hello World\n');
}).listen(serverPort);
console.log('Stress-O-Meter is running on Server' + serverPort);