json.array! @movies.each do |movies|
  json.title @movie.title
  json.year @movie.year
  json.plot @movie.plot
end
  

  

  # def all_movies_method 
  #   @movie = Movie.all
  #   render 'movie.json.jbuilder'
  # end
