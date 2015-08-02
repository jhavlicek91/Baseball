class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, :null => false
      t.references :state, index: true, foreign_key: true
    end
  end
end
