var server = require("http").createServer();
var everyone = require("now").initialize(server, {socketio: {"log level": 5}}); 

everyone.now.distributeMessage = function(message) {
  everyone.now.receiveMessage(this.now.name, message);
};

server.listen(8080);

