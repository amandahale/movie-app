class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, presence: true
  validates :plot, length: { in: 20..1000 } 
  validates :year, length: { is: 4 }
end
