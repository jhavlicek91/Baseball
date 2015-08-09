class Division < ActiveRecord::Base
  belongs_to :conference
  has_many :team
end
