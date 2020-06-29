require "http"

response = HTTP.get("http://localhost:3000/api/one_movie_url")

puts response

require "http"

response = HTTP.get("http://localhost:3000/api/all_movies_url")

puts response