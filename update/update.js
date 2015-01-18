var http = require('http');
var cp = require('child_process');

console.log('Listening port 5555...');

http.createServer(function (req, res) {
    req.on('data', function () {});
    req.on('end', function () {
        cp.exec('./build.sh', {cwd: '/data'}, function(err, stdout, stderr) {
            res.writeHead(200, {'Content-Type': 'text/plain'});
            res.end(stdout + '\n\n' + stderr);
        });
    });
}).listen(5555, '0.0.0.0');
