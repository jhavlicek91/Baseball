class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name, :null => false
      t.references :league, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
