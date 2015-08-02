class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, :null => false
      t.string :name_abbreviation
      t.references :division, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.string :primaryColor
      t.string :secondaryColor
    end
  end
end
