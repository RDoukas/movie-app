class Api::MoviesController < ApplicationController

  def all_movies_action
    @all_movies = Movie.all
    render "all_movies.json.jb"
  end 
  def one_movie_action 
    @movie = Movie.all.sample
    render "one_movie.json.jb"
  end 

end
