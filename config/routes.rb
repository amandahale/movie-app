Rails.application.routes.draw do
   
    namespace :api do
      get "/one_actor_url" => 'actor#actor_id_method'
    end

  end
