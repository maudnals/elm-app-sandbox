var jsonServer = require('json-server');

// create an express server
let server = jsonServer.create();

// set defaults middlewares
server.use(jsonServer.defaults());

// set routing
let router = jsonServer.router('db.json');
server.use(router);

// start server
console.log('listening at 5000');
server.listen(5000);