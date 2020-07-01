/* global axios */

axios.get("https://hudson-keener-2984/api/actors").then(function(response) {
  var actors = response.data;
  console.log(actors);
});
