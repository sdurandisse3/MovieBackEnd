
const {db} = require('./dbConnect')

const MovieService = {};

MovieService.read = () => {
    return db.any('SELECT * FROM movies');
}

MovieService.read_id = (id) => {
    // return db.one('SELECT * FROM movies WHERE id=${id}', {id: id});
//    return db.any(`SELECT * movies, genres FROM genres where id = ${id}`)

   return db.any(`
   SELECT * 
   FROM movies JOIN genres on movies.id = genres.id
   WHERE genres.id = ${id}
   `)
}
module.exports = MovieService;