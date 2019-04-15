const bodyParser = require('body-parser');
const express = require('express');
const app = express();
const port = 3001;


const movieRouter = require('./routes/movies');


// MIDDLEWARE NEEDED
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())

// user routes
app.use('/movies', movieRouter);

app.get('/', (req,res) => {
 res.json('Hello WOrld')
})

app.listen(port, () => {
  console.log('Movieapp is running on Port: '+port);
});