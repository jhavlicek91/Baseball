class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :position
  belongs_to :city, :foreign_key => 'birth_city_id'
end
