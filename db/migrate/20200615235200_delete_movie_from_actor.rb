class DeleteMovieFromActor < ActiveRecord::Migration[6.0]
  def change
    remove_column :actors, :movie_id, :integer
  end
end
