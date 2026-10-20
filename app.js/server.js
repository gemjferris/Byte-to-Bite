
const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Welcome to Byte to Bite!');
});

app.listen(3000, () => {
    console.log('Byte to Bite is running on port 3000');
});
