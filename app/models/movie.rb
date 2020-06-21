class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :year, numericality: { greater_than: 1500, less_than: 2100 }
  validates :director, :title, length: { minimum: 2 }

  has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map do |genre|
      genre.name
    end
  end
end
