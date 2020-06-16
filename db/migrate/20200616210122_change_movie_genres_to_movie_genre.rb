class ChangeMovieGenresToMovieGenre < ActiveRecord::Migration[6.0]
  def change
    rename_table :movie_genres, :movie_genre
  end
end
