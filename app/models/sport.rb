class Sport < ActiveRecord::Base
	has_many :league
	has_many :position
end
