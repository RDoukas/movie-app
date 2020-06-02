class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "movies_index.json.jb"
  end 

  def show
    @movie = Movie.find(params[:id])
    render "movies_show.json.jb"
  end 

  def create 
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plolt],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    @movie.save
    render "movies_show.json.jb"
  end 

  def update 
    @movie = Movie.find_by(id: params[:id])
    @movie.id = params[:id] || @movie.id
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.created_at = params[:created_at] || @movie.created_at
    @movie.updated_at = params[:updated_at] || @movie.updated_at

    @movie.save
    render "movies_show.json.jb"
  end   
  
  def destroy 
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "You've successfull deleted the actor"}
  end 

end
