class Game < ActiveRecord::Base
 has_many :feeder_lines
 has_many :feeder_cards, through: :feeder_lines, source: :card
 has_many :product_lines
 has_many :product_cards, through: :product_lines, source: :card
 has_one :deck
end
