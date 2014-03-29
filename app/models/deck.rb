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
    fill_deck(:color => "Black", :symbol => "Spades", :number => 2)
    fill_deck(:color => "Black", :symbol => "Club", :number => 2)
    fill_deck(:color => "Red", :symbol => "Hearts", :number => 2)
    fill_deck(:color => "Red", :symbol => "Diamonds", :number => 2)
    @deck 
  end

  def fill_deck(params = {})
    @deck << Card.new(:number => "A", :value => 1, :color => params[:color], :symbol => params[:symbol], :state => "None", :visible => 0)
    while params[:number] < 11
      @deck << Card.new(:number => params[:number].to_s, :value => params[:number], :color => params[:color], :symbol => params[:symbol], :state => "None", :visible => 0)
      params[:number] = params[:number] + 1
    end
    @deck << Card.new(:number => "J", :value => 11, :color => params[:color], :symbol => params[:symbol], :state => "None", :visible => 0)
    @deck << Card.new(:number => "Q", :value => 12, :color => params[:color], :symbol => params[:symbol], :state => "None", :visible => 0)
    @deck << Card.new(:number => "K", :value => 13, :color => params[:color], :symbol => params[:symbol], :state => "None", :visible => 0)
  end
end 

#Creacion de objetos
prueba1 = Deck.new
a = prueba1.create_deck
print "DECK\n"
print a
print "\n***********\n"
prueba2 = FeederLine.new
b = prueba2.create_feeder_deck(a)
print "FEEDER LINE\n"
print b
print "\n***********\n"
prueba3 = LoadingDeck.new
c = prueba3.create_loading_deck(a)
print "LOADING DECK\n"
print c
print "\n***********\n"
prueba4 = LoadingDeck.new

print a
d = prueba2.move_from_feeder_line(2,4)
print "FL TO FL\n"
print b
print "\n***********\n"
