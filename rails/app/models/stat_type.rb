class StatType < ActiveRecord::Base
	belongs_to :stat_classification
	has_many :player_stat
end