
const express = require('express');
const session = require('express-session');
const MySQLStore = require('express-mysql-session')(session);
const connection = require('./db');

const app = express();

app.use(express.urlencoded({extended: true}));

const sessionStore = new MySQLStore({
    host: 'localhost',
        user: 'root',
    password: process.env.DB_PASSWORD,
    database: 'byte_to_bite'
});

app.use(session({
    key: 'byte_to_bite_session',
    secret: process.env.SESSION_SECRET || 'byte-to-bite-development-secret',
    store: sessionStore,
    resave: false,
    saveUninitialized: false,
    cookie:{
        maxAge:1000 * 60 * 60
    }
}));
app.get('/', (req, res) => {
    res.send('Welcome to Byte to Bite!');
});

app.listen(3000, () => {
    console.log('Byte to Bite is running on port 3000');
});
