class Api::ActorsController < ApplicationController

  def index 
    @actors = Actor.all
    render 'index.json.jbuilder'
  end

  def create
    @actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
      gender: params["gender"]
      age: params["age"]
      )
    @actor.save
    render 'show.json.jbuilder'
  end

  def show
    @actor = Actor.find(params["id"])
    render 'show.json.jbuilder'  
  end

  def update
    @actor = Actor.find(params["id"])
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age
    @actor.save
    render 'show.json.jbuilder'
  end

  def destroy
    @actor = Actor.find(params["id"])
    @actor.destroy
    render json: {message: "this actor has been deleted from your catalog"}
  end

#   def actor_query_method
#     @actor = params["actor"]
#     render 'actor.json.jbuilder'
#   end

#   def actor_segment_method
#     @actor = params["wildcard"]
#     render 'actor.json.jbuilder'
#   end

#   def actor_body_method
#     @actor = params[:actor]
#     render 'actor.json.jbuilder'
#   end
end
