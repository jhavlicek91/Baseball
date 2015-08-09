class AddStatsTables < ActiveRecord::Migration
  def change
  	create_table :stat_classifications do |t|
  		t.string :name
		  t.references :sport, index: true, foreign_key: true  		
  	end

  	create_table :stat_types do |t|
  		t.string :name
  		t.references :stat_classification, index: true, foreign_key: true
  	end

  	create_table :player_stats do |t|
  		t.references :player, index: true, foreign_key: true
  		t.references :stat_type, index: true, foreign_key: true
  		t.string :value
  	end
  end
end
