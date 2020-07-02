/* global axios */
axios.get("http://localhost:3000/api/actor").then(function (response) {
  var actors = response.data;
  console.log(actors);
});