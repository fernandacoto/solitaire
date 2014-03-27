class FeederLine
  attr_accessor :feeder_deck, :feeder_line, :deck

  def initialize
  	@feeder_deck = []
  end

  def create_feeder_deck(deck)
  	deck.shuffle!
  	number_cards = 1
  	while number_cards < 8
  	  fill_feeder_line(number_cards,deck)
  	  number_cards = number_cards + 1
  	end 
  	@feeder_deck
  end

  def fill_feeder_line(number_cards,deck)
  	@feeder_line = []
  	fill_feeder_line_with_state(0,0,number_cards,deck)
  end

  def fill_feeder_line_with_state(number_feeder,number_deck,number_cards,deck)
  	while number_feeder < number_cards
      if deck[number_deck].state == "None"
      	deck[number_deck].state = "FL"
      	if (number_cards - number_feeder) == 1
          deck[number_deck].visible = 1
        end
      	@feeder_line << deck[number_deck]	
        number_feeder = number_feeder + 1
      end
      number_deck = number_deck + 1
    end
    @feeder_deck << @feeder_line 
  end
end