Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  get "/notes" => "notes#index"
  post "/notes" => "notes#create"
  patch "/notes/:id" => "notes#update"
  delete "/notes/:id" => "notes#destroy"
  
  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"

  get "/songwriters" => "songwriters#index"

  get "/shows" => "shows#index"

  get "/genres" => "genres#index"

  get "tempos" => "tempos#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/saved_songs" => "saved_songs#create"
  get "/saved_songs" => "saved_songs#index"

end
