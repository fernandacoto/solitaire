class FeederLine
  attr_accessor :feeder_deck, :feeder_line, :deck

  def initialize
  	@feeder_deck = []
  end

  def create_feeder_deck(deck)
  	deck.shuffle!
  	fill_feeder_line(1,deck)
  	fill_feeder_line(2,deck)
  	fill_feeder_line(3,deck)
  	fill_feeder_line(4,deck)
  	fill_feeder_line(5,deck)
  	fill_feeder_line(6,deck)
  	fill_feeder_line(7,deck)
  	@feeder_deck
  end

  def fill_feeder_line(number_cards,deck)
  	@feeder_line = []
  	fill_feeder_line_with_state(0,0,number_cards,deck)
  end

  def fill_feeder_line_with_state(number_feeder,number_deck,number_cards,deck)
  	while number_feeder < number_cards
      if deck[number_deck].state == "None"
      	@feeder_line << deck[number_deck]
      	deck[number_deck].state = "FL" 	
        number_feeder = number_feeder + 1
      end
      number_deck = number_deck + 1
    end
    @feeder_deck << @feeder_line 
  end
end