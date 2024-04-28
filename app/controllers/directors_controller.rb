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

  def junior
    valid_directors = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    @youngest = valid_directors[-1]

    render({ :template => "director_templates/youngest"})
  end

  def senior
    valid_directors = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    @eldest = valid_directors[0]

    render({ :template => "director_templates/eldest"})
  end
end
