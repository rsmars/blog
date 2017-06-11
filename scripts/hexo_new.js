var spawn = require('child_process').spawn;
var os = require('os')
// Hexo 3
hexo.on('new', function(data){
    if (os.platform() == 'darwin'){
        spawn('open', [data.path]);
    }
});
