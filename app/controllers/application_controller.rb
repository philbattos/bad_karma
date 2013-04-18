class ApplicationController < ActionController::Base
  protect_from_forgery
end

### GENERAL ORDER
  # create home page
  # create players pages
  # create categories
  # create new/edit/update options for players pages
  # create authentication (sign in & sign out)
  # create validations and permissions (users vs admins)

### TO DO LIST
  #~ create home page for Bad Karma soccer team
  #~ create page for each player
  #~ create page team that links to each player
  #~ create database with players info
    #~ players table
      #~ first name
      #~ last name
      #~ position
      #~ guy/girl
      #~ years on team
      #~ number
  # change "years" view to accept "1 year" or "new player" (for 0 years)
  # add categories
    # positions
    # gender
  #~ sort/display players by position and/or gender on players page
  # refactor
    #~ reduce actions in players controller (don't need an action for each player)
    #~ reduce routes (don't need a separate route for each player?)
    #~ find simpler way to create seed data (there is none)
    #~ find shorter way to link (with "player_path")
  #~ allow new players to create their own page
  # allow current players to edit their own info
  # make program calculate years_on_team based on created_at date (or new field: "joined_team" date)
    # is is possible to retroactively modify created_at date?
  # create partials
  # create helpers?
  # allow users to create username and password to edit their own page but not others
    # create login sessions that retain users identity (username & permissions)
    # establish permissions for users
  # users can view other players pages but not edit them
  # create site admin to edit any players page
  #~ player's edit page uses /players/[id]/edit; change to /players/[name]/edit
  # seed data with multiple positions
  # make flash messages work


### QUESTIONS
#~ Why does "resources :players" enable us to use "player_path" in links in views but writing routes manually does not?
#~ Why does "player_path(player)" work but player_path(player.first_name.downcase) does not work in link in view?
#~ How do we create seed data more easily?
#~ Could positions be connected to players with a "has_many" association? or does there need to be a third table/model that connects them?
#~ Is is harder to add page '/players/positions' than '/positions'? Why?
#~ Where is params info stored before it is pulled out with "@player.position =" in create action?
  # NOTE: params refers to data retrieved from http request
  # NOTE: ":id" in params[:id] is a placeholder (it does not necessarily refer to a specific id)
# What happens to player instances that were created in the past? (e.g. I created a player with id 5, but now the database/program says id 5 = nil.)





### RAKE ROUTES for BLOGGER tutorial ###
#                      root   /                                                 articles#index
#     article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                      POST   /articles/:article_id/comments(.:format)          comments#create
#  new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
# edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#      article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                      PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                      DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#             articles GET    /articles(.:format)                               articles#index
#                      POST   /articles(.:format)                               articles#create
#          new_article GET    /articles/new(.:format)                           articles#new
#         edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#              article GET    /articles/:id(.:format)                           articles#show
#                      PUT    /articles/:id(.:format)                           articles#update
#                      DELETE /articles/:id(.:format)                           articles#destroy
#                 tags GET    /tags(.:format)                                   tags#index
#                      POST   /tags(.:format)                                   tags#create
#              new_tag GET    /tags/new(.:format)                               tags#new
#             edit_tag GET    /tags/:id/edit(.:format)                          tags#edit
#                  tag GET    /tags/:id(.:format)                               tags#show
#                      PUT    /tags/:id(.:format)                               tags#update
#                      DELETE /tags/:id(.:format)                               tags#destroy


