class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name, :null => false
      t.string :abbreviation
      
      t.references :sport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
