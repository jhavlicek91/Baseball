class Team < ActiveRecord::Base
  belongs_to :division
  belongs_to :city
  has_many :player
end
