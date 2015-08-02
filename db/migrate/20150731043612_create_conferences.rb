class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name, :null => false
      t.string :abbreviation
      t.references :league, index: true, foreign_key: true
    end
  end
end
