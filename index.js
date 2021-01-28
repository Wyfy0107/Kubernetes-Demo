const app = require('express')();
const os = require('os');

app.get('/', (req, res) => res.send(`hello from ${os.hostname()}`));
app.listen(3000);
