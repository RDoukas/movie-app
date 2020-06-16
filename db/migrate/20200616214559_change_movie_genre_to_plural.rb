class ChangeMovieGenreToPlural < ActiveRecord::Migration[6.0]
  def change
    rename_table :movie_genre, :movie_genres
  end
end
