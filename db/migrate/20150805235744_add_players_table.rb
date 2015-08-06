class AddPlayersTable < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name, :null => false
      t.string :abbreviation
      t.references :sport, index: true, foreign_key: true
     end

    create_table :players do |t|
      t.string :name, :null => false
      t.integer :number
      t.references :team, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true      
	end
  end
end
