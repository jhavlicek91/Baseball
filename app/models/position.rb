class Position < ActiveRecord::Base
	has_many :player
	belongs_to :sport
end
