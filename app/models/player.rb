# == Schema Information
#
# Table name: players
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  position      :string(255)
#  gender        :string(255)
#  years_on_team :integer
#  jersey_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Player < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :position, :gender, :years_on_team, :jersey_number

  validates :first_name, presence: true, length: { maximum: 50 }

  # has_and_belongs_to_many :positions

  # Player.where(:position => "defense")
end
