Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"


  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "pages#index"           # index
    get "/actor/:id" => "pages#show"        # show
    post "/actor/" => "pages#create"        # create
    patch "/actor/:id" => "pages#update"    # update
    delete "/actor/:id" => "pages#destroy"  # destroy


    get "/movie" => "movies#index"            # index
    get "/movie/:id" => "movies#show"         # show specific movie (url segment param)
    post "/movie" => "movies#create"          # create
    patch "/movie/:id" => "movies#update"     # update
    delete "/movie/:id" => "movies#destroy"   # destroy

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"

  end

end
