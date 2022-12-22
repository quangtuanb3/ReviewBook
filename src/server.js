import express from 'express';
import configViewEngine from './configs/configViewEngine';
import initWebRoute from './route/web';
var morgan = require('morgan')
require('dotenv').config();
const cookieParser = require("cookie-parser");

import session from 'express-session';


const app = express()
const port = process.env.PORT || 3000;
const oneDay = 1000 * 60 * 60 * 24;

app.use(morgan('combined'))
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(session({
  secret: 'secret',
  resave: false,
  cookie: { maxAge: oneDay },
  saveUninitialized: true
}));
app.use(cookieParser());


//set up view engine
configViewEngine(app);

//init web route
initWebRoute(app)



app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
}) 