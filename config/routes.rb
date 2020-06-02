Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor/:id" => "pages#get_actor_action"

    get "/movies" => "movies#index"  # show all movies
    get "/movies/:id" => "movies#show"  # show specific movie (url segment param)
    # query param single movie:
    get "/movies" => "movies#show"
    # body param single movie:
    post "/movies" => "movies#show"

  end

end
