BadKarma::Application.routes.draw do

root to: 'players#index'
  # "root to:" tells the program to use the following route as the root/home page
  # 'players' tells the program to send the request to the players controller
  # '#team' tells the players controller to call the 'team' method/action

resources :players
# resources :positions
resources :users
resources :user_sessions, only: [:new, :create, :destroy]

get "/positions" => "positions#index"

match 'login' => 'user_sessions#new'
match 'logout' => 'user_sessions#destroy'


# match '/players/first_name/edit' => 'players#edit'

# get "" => "players#home"
  # can this be used to establish the root/home page instead of 'root to:'?

# get "/players/phil" => "players#phil"
  # the first part "/phil" identifies where the request is coming from (what page the user is on)
  # the second part "players#phil" sends a command/request to the controller to find and display the correct info

# get "/players/new" => "players#new"

# get "/players/:id" => "players#show"

end
