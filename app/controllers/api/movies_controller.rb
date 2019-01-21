class Api::MoviesController < ApplicationController

  def all_movies_method 
    @movie = Movie.all
    render 'movie.json.jbuilder'
  end

end
