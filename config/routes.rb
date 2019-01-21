Rails.application.routes.draw do
   
    namespace :api do
      get "/one_actor_url" => "actors#actor_id_method"
      get "/all_movies_url" => "movies#all_movies_method"
      get "/actor_query" => "actors#actor_query_method"
      get "/actor_segment" => "actors#actor_segment_method"
      post "/actor_body" => "actors#actor_body_method"
    end

  end
