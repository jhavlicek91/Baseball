class PlayerStat < ActiveRecord::Base
  belongs_to :stat_type
  belongs_to :player
end