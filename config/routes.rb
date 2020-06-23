Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  
  get "/actors" => "actors#index"
  get "actors/new" => "actors#new"
  get "/actors/:id" => "actors#show"
  post "/actors" => "actors#create"
  get "/movies/:id/edit" => "movies#edit"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"


  get "/movies" => "movies#index" 
  get "/movies/new" => "movies#new"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  get "/movies/:id/edit" => "movies#edit"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"


  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"

  end
end
