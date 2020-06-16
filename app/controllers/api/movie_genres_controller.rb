class Api::MovieGenresController < ApplicationController

  def index 
    @movies_genres = current_user.movies_genre
  end 

  def create
    @movies_genre = MovieGenre.new(
      user_id: current_user.id, 
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @movies_genre.save 
      render show.json.jb
    else 
      render json: {errors: @movie_genre.errors.full_messages}, status: :unprocessable_entity
    end 
  end 
  
end
