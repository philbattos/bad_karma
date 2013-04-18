class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |table|
      table.string :first_name
      table.string :last_name
      table.string :position
      table.string :gender
      table.integer :years_on_team
            # date :joined_team
      table.integer :jersey_number
      table.timestamps
    end
  end
end
