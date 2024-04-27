class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list" })
  end

  def show
    actor_id = params["actor_id"]
    matching_records = Actor.where({:id => actor_id})
    @actor = matching_records[0]
    @matching_characters = Character.where({:actor_id => actor_id})

    render({ :template => "actor_templates/details"})
  end
end
