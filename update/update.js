var http = require('http');
var cp = require('child_process');

http.createServer(function (req, res) {
    console.log('Listening port 5555...');
    req.on('data', function () {});
    req.on('end', function () {
        cp.exec('./build.sh', {cwd: '/root'}, function(err, stdout, stderr) {
            res.writeHead(200, {'Content-Type': 'text/plain'});
            res.end(stdout + '\n\n' + stderr);
        });
    });
}).listen(5555, '0.0.0.0');
