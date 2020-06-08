class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :year, numericality: { greater_than: 1500, less_than: 2100 }
  validates :director, :title, length: { minimum: 2 }
end
