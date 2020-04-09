var http = require('http');
http.createServer(function (req, res) {
  res.writeHead(200, { 'Content-Type': 'text/html' });

  a = Math.floor((Math.random() * 10) + 1);
  c = 0;

  for (i = 0; i < 100 * a; i++) {
    for (j = 0; j < 1 * i; j++) {
      b = Math.floor((Math.random() * 10) + 1);
      c = b + c;
    }
    d = c + Math.floor((Math.random() * 10) + 1);
  }
  res.write(JSON.stringify(d));
  res.end();
}).listen(80);
