class AddTeamStandingsInfo < ActiveRecord::Migration
  def change
  		add_column :teams, :place, :string
	  	add_column :teams, :streak, :string
  	  	add_column :teams, :last_ten, :string
  	  	add_column :teams, :team_record, :string
  end
end
