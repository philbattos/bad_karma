class PositionsController < ApplicationController

  def index
    @players = Player.find(:all)
    @defense = Player.where(:position => "defense")
    @midfield = Player.where(:position => "midfield")
    @forwards = Player.where(:position => "forward")

    # render :template => "positions/index"
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end