class Api::MoviesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @movies = Movie.all
    render "movies_index.json.jb"
  end 

  def show
    @movie = Movie.find_by(id: params[:id])
    render "movies_show.json.jb"
  end 

  def create 
    @movie = Movie.new(
      title: params[:title],
      user_id: current_user.id,
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      # english: params[:english],
      # created_at: params[:created_at],
      # updated_at: params[:updated_at]
    )
    if @movie.save
      render "movies_show.json.jb"
    else 
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def update 
    @movie = Movie.find_by(id: params[:id])

    if @movie.user_id == current_user.id
      # @movie.id = params[:id] || @movie.id
      @movie.title = params[:title] || @movie.title
      @movie.year = params[:year] || @movie.year
      @movie.plot = params[:plot] || @movie.plot
      @movie.director = params[:director] || @movie.director
      # @movie.english = params[:english] || @movie.english
      # @movie.created_at = params[:created_at] || @movie.created_at
      # @movie.updated_at = params[:updated_at] || @movie.updated_at
    
      if @movie.save
        render "movies_show.json.jb"
      else 
        render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
      end 
    end
  end   
  
  def destroy 
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "You've successfull deleted the movie"}
  end 

end
