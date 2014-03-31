class FeederLine < ActiveRecord::Base
  belongs_to :card
  belongs_to :game
end
