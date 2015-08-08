class StatClassification < ActiveRecord::Base
	belongs_to :sport
	has_many :stat_type
end