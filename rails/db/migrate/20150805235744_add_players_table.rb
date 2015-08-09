class AddPlayersTable < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name, :null => false
      t.string :abbreviation
      t.references :sport, index: true, foreign_key: true
     end

    create_table :players do |t|
      t.string :name
      t.integer :number
      t.integer :theScoreId
      t.references :team, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true      
      t.string :height
      t.string :weight
      t.date :birthdate
      t.references :sport, index: false, foreign_key: true
      t.references :birth_city, references: :city, index: true, foreign_key: true
	   end

     add_index :players, [:sport_id, :theScoreId], :unique => true 
  end
end
