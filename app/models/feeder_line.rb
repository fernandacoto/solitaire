class FeederLine
  attr_accessor :feeder_deck, :feeder_line, :deck

  def initialize
  	@feeder_deck = []
  end

  def create_feeder_deck(deck)
  	deck.shuffle!
  	create_feeder_line(1,deck)
  	@feeder_deck
  end

  def create_feeder_line(number_cards,deck)
  	while number_cards < 8
  	  fill_feeder_deck(number_cards,deck)
  	  number_cards = number_cards + 1
  	end 
  end

  def fill_feeder_deck(number_cards,deck)
  	@feeder_line = []
  	fill_each_feeder_line(0,0,number_cards,deck)
  end

  def fill_each_feeder_line(number_feeder,number_deck,number_cards,deck)
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

  def move_from_feeder_line(feeder_move_one, feeder_move_two)
  	feeder_line_size_one = @feeder_deck[feeder_move_one].size
  	feeder_line_size_two = @feeder_deck[feeder_move_two].size
    if !feeder_line_size_two == 0
      @feeder_deck[feeder_move_two][feeder_line_size_two - 1].visible = 0	
    end
    @feeder_deck[feeder_move_two] << @feeder_deck[feeder_move_one][feeder_line_size_one - 1]
    @feeder_deck[feeder_move_one].delete_at(feeder_line_size_one - 1)
    if !feeder_line_size_one == 0
      @feeder_deck[feeder_move_one][feeder_line_size_one - 1].visible = 1	
    end
  end
end