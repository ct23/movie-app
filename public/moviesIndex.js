/* global axios */

axios.get("http://localhost:3000/api/movie").then(function (response) {
  var movies = response.data;
  console.log(movies);
});