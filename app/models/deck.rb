require_relative './card.rb'
require_relative './feeder_line.rb'
require_relative './loading_deck.rb'
require_relative './product_line.rb'

class Deck 
  attr_accessor :deck

  def initialize
  	@deck = []
  end

  def create_deck
    fill_deck("Black","Spades",2)
    fill_deck("Black","Club",2)
    fill_deck("Red","Hearts",2)
    fill_deck("Red","Diamonds",2)
    @deck 
  end

  def fill_deck(color,symbol,number)
    @deck << Card.new(:number => "A", :value => 1, :color => color, :symbol => symbol, :state => "None", :visible => 0)
    while number < 11
      @deck << Card.new(:number => number.to_s, :value => number, :color => color, :symbol => symbol, :state => "None", :visible => 0)
      number = number + 1
    end
    @deck << Card.new(:number => "J", :value => 11, :color => color, :symbol => symbol, :state => "None", :visible => 0)
    @deck << Card.new(:number => "Q", :value => 12, :color => color, :symbol => symbol, :state => "None", :visible => 0)
    @deck << Card.new(:number => "K", :value => 13, :color => color, :symbol => symbol, :state => "None", :visible => 0)
  end
end 




