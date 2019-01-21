class Api::ActorsController < ApplicationController

  def actor_id_method 
    @actor = Actor.find_by(id: 2)
    render 'actor_id.json.jbuilder'
  end

  def actor_query_method
    @actor = params["actor"]
    render 'actor.json.jbuilder'
  end

  def actor_segment_method
    @actor = params["wildcard"]
    render 'actor.json.jbuilder'
  end

  def actor_body_method
    @actor = params[:actor]
    render 'actor.json.jbuilder'
  end
end
