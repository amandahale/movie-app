Rails.application.routes.draw do
   
    namespace :api do
      get "/actors" => "actors#index"
      
      post "/actors" => "actors#create"

      get "/actors/:id" => "actors#show"

      patch "/actors/:id" => "actors#update"

      delete "/actors/:id" => "actors#destroy"

      get "/movies" => "movies#index"
      
      post "/movies" => "movies#create"

      get "/movies/:id" => "movies#show"

      patch "/movies/:id" => "movies#update"

      delete "/movies/:id" => "movies#destroy"

      post "/users" => "users#create"

      post "/sessions" => "sessions#create"

      get "/movie_genres" => "movie_genres#index"
      post "/movie_genres" => "movie_genres#create"

      # get "/actor_query" => "actors#actor_query_method"
      # get "/actor_segment" => "actors#actor_segment_method"
      # post "/actor_body" => "actors#actor_body_method"
    end

  end
