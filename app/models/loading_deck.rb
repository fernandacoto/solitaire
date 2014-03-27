require_relative './card.rb'

class LoadingDeck 
  attr_accessor :deck

  def initialize
  	@deck = []
    fill_deck("Black","Spades",2)
    fill_deck("Black","Club",2)
    fill_deck("Red","Hearts",2)
    fill_deck("Red","Diamonds",2)
    print @deck
  end

  def fill_deck(color,symbol,number)
    @deck << Card.new(:number => "A", :value => 1, :color => color, :symbol => symbol, :state => "LD")
    while number < 11
      @deck << Card.new(:number => number.to_s, :value => number, :color => color, :symbol => symbol, :state => "LD")
      number = number + 1
    end
    @deck << Card.new(:number => "J", :value => 11, :color => color, :symbol => symbol, :state => "LD")
    @deck << Card.new(:number => "Q", :value => 12, :color => color, :symbol => symbol, :state => "LD")
    @deck << Card.new(:number => "K", :value => 13, :color => color, :symbol => symbol, :state => "LD")
  end
end