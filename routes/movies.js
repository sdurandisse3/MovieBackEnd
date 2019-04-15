const express = require('express');
const movieRouter = express.Router();
const MovieService = require('../services/movies');


// GET - READ USER
movieRouter.get('/', (req, res) => {
  
    MovieService.read()
    .then(data => {
      res.json(data);
    })
    .catch(err => {
      res.json(err.toString());
    })

});


movieRouter.get('/:id', (req, res) => {
  const { id } = req.params;
    MovieService.read_id(id)
    .then(data => {
      res.json(data);
    })
    .catch(err => {
      res.json(err.toString());
    })

});




module.exports = movieRouter;
