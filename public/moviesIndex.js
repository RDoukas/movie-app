/* global axios */

axios.get("https://hudson-keener-2984/api/movies").then(function(response) {
  var movies = response.data;
  console.log(movies);
});
