class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :feeder_lines
  has_many :feeder_cards, through: :feeder_lines, source: :game
  has_many :product_lines
  has_many :product_cards, through: :product_lines, source: :game
end
