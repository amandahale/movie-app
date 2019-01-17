class ApplicationController < ActionController::Base

  def actor_id_method 
    @actor.id = Actor.find_by(id: 2)
    render 'actor_id.json.jbuilder'
  end

end
