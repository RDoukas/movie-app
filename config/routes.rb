Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_url" => "actors#actor_action"
    get "/all_movies_url" => "movies#all_movies_action"
    get "/one_movie_url" => "movies#one_movie_action"
  end
end
