class Movie < ApplicationRecord

  # validates :title, :year, :plot, :director, :english, presence: true
  # validates :year, numericality: {only_integer: true}, length: { is: 4 }
  # validates :plot, length: { maximum: 500 }

  # has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map { |genre| genre.name}
  end 


end
