class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    director_id = params["director_id"]
    matching_records = Director.where({:id => director_id})
    @director = matching_records[0]
    @matching_movies = Movie.where({:director_id => director_id})

    render({ :template => "director_templates/details"})
  end
end
