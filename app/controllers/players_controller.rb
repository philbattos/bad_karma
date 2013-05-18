class PlayersController < ApplicationController
  layout "application"

  before_filter :require_login, only: [:edit, :update, :destroy]

  # def home
  #   # render sends template(html) to view to display
  #   # get info from model (which accesses database)
  #   render :template => "team/home"
  # end

  def index
    @players = Player.all
    # "Player.all" sends message to the Player model to retrieve all the Player instances
    # that list of players is assigned to @players
    # @players is available in the view to display all players or specific players
  end

  def create
    @player = Player.new(params[:player])
    # @player.first_name = params[:player][:first_name]
    # @player.last_name = params[:player][:last_name]
    # @player.position = params[:player][:position]
    # @player.gender = params[:player][:gender]
    # @player.years_on_team = params[:player][:years_on_team]
    # @player.jersey_number = params[:player][:jersey_number]
    @player.save
    redirect_to player_path(@player.id, notice: 'Thank you for submitting a new player listing. [And admin will review your submission soon.]')
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find(params[:id])
  end

  def show
    # @player = Player.find_by_first_name(params[:id].capitalize)
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(params[:player])
    redirect_to player_path(@player.id)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  # def positions
  #   @player = Player.find_by_position(params[:id])
  # end

  # def players
  #   render :template => "players"
  # end

  # def phil
  #   @player = Player.find_by_first_name("Phil")
  #   # "find_by_first_name" is a command/function available in Rails/Active Record
  #   # Rails also offers "find_by_[any_attribute]", where [any_attribute] is a field in the database
  #   # for example, in this program we could use "find_by_position" or "find_by_jersey_number", etc.
  # end

end