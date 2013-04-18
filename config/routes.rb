BadKarma::Application.routes.draw do

root to: 'players#index'
  # "root to:" tells the program to use the following route as the root/home page
  # 'players' tells the program to send the request to the players controller
  # '#team' tells the players controller to call the 'team' method/action

resources :players
# resources :positions
resources :users
resources :user_sessions, only: [:new, :create, :destroy]

match 'login' => 'user_sessions#new'
match 'logout' => 'user_sessions#destroy'

# match '/players/first_name/edit' => 'players#edit'

# get "" => "players#home"
  # can this be used to establish the root/home page instead of 'root to:'?

# get "/team" => "players#team"
get "/positions" => "positions#index"
# get "/players/positions" => "positions#index"

# get "/players/new" => "players#new"

# get "/players/:id" => "players#show"

# get "/players/phil" => "players#phil"
  # the first part "/phil" identifies where the request is coming from (what page the user is on)
  # the second part "players#phil" sends a command/request to the controller to find and display the correct info
# get "/players/eileen" => "players#eileen"
# get "/players/cherri" => "players#cherri"
# get "/players/jason" => "players#jason"
# get "/players/justin" => "players#justin"
# get "/players/brian" => "players#brian"
# get "/players/josh" => "players#josh"
# get "/players/colin" => "players#colin"
# get "/players/erik" => "players#erik"
# get "/players/steve" => "players#steve"
# get "/players/zach" => "players#zach"
# get "/players/danny" => "players#danny"
# get "/players/maria" => "players#maria"
# get "/players/melanie" => "players#melanie"
# get "/players/dani" => "players#dani"
# get "/players/stevie" => "players#stevie"
# get "/players/dom" => "players#dom"
# get "/players/jocie" => "players#jocie"

end
