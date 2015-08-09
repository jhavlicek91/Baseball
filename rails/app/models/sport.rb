class Sport < ActiveRecord::Base
	has_many :league
	has_many :position
	has_many :stat_classification
end
