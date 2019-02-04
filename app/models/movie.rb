class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, presence: true
  validates :plot, length: { in: 20..1000 } 
  validates :year, length: { is: 4 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres


  def genre_names
    genres.map {|genre| genre.name} 
  end

end
