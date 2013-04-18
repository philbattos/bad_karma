class Position < ActiveRecord::Base
  attr_accessible :defense, :midfield, :forward, :goalkeeper

  # has_and_belongs_to_many :players

  def defenders
    defenders = []
    @players.each do |player|
      defenders << player.upcase
    end
    defenders
  end
end