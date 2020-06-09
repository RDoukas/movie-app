class Movie < ApplicationRecord

  validates :title, :year, :plot, :director, :english, presence: true
  validates :year, numericality: {only_integer: true}, length: { is: 4 }
  validates :plot, length: { maximum: 500 }

  has_many :actors

end
