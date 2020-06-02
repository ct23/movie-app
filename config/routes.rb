Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor/:id" => "pages#get_actor_action"

    get "/movies" => "movies#index"  # show all movies
    get "/movies/:id" => "movies#show"  # show specific movie

  end

end
