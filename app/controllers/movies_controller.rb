class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list" })
  end

  def show
    movie_id = params["movie_id"]
    matching_records = Movie.where({:id => movie_id})
    @movie = matching_records[0]
    @director = Director.where({:id => @movie.director_id})[0]

    render({ :template => "movie_templates/details"})
  end
end
