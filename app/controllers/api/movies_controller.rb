class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "actors_index.json.jb"
  end 

  def show
    @movie = Movie.find(params[:id])
    render "movies_show.json.jb"
  end 

  def create 
    @movie = Movie.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    @movie.save
    render "movies_show.json.jb"
  end 

  def update 
    @movie = Movie.find_by(id: params[:id])
    @movie.id = params[:id] || @movie.id
    @movie.first_name = params[:first_name] || @movie.first_name
    @movie.last_name = params[:last_name] || @movie.last_name
    @movie.known_for = params[:known_for] || @movie.known_for
    @movie.created_at = params[:created_at] || @movie.created_at
    @movie.updated_at = params[:updated_at] || @movie.updated_at

    @movie.save
    render "actors_show.json.jb"
  end   
  
  def destroy 
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "You've successfull deleted the actor"}
  end 

end
