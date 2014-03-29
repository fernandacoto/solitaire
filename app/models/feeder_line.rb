class FeederLine
  attr_accessor :feeder_deck, :feeder_line, :deck, :product_line

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

  def move_from_feeder_line(feeder_move_one,feeder_move_two)
    change_visible_feeder_to_zero(feeder_move_two)
    change_card_from_feeder(feeder_move_one,feeder_move_two)
    change_visible_feeder_to_one(feeder_move_one)
  end

  def move_from_product_line(product_move,feeder_move,product_line)
    change_visible_feeder_to_zero(feeder_move)
    change_state(product_line[product_move][product_size - 1])
    change_card_from_deck(product_line[product_move],feeder_move)
    change_visible_deck(product_line[product_move])
  end

  def move_from_loading_deck(loading_move,feeder_move,loading_deck)
    change_visible_feeder_to_zero(feeder_move)
  	change_state(loading_deck[loading_move])
    change_card_from_deck(loading_deck,feeder_move)
    change_visible_deck(loading_deck)
  end

  def change_card_from_feeder(move_one,move_two)
    feeder_size = get_size_feeder(move_one)
    @feeder_deck[move_two] << @feeder_deck[move_one][feeder_size - 1]
    @feeder_deck[move_one].delete_at(feeder_size - 1)
  end

  def change_card_from_deck(deck,move)
    loading_size = get_size(deck)
    @feeder_deck[move] << deck[loading_size - 1]
    deck.delete_at(loading_size - 1)
  end

  def change_state(deck)
    deck.state = "FL"
  end

  def change_visible_feeder_to_zero(move)
    feeder_size = get_size_feeder(move)
    @feeder_deck[move][feeder_size - 1].visible = 0 if !@feeder_deck[move].empty?
  end

  def change_visible_feeder_to_one(move)
    feeder_size = get_size_feeder(move)
    @feeder_deck[move][feeder_size - 1].visible = 1 if !@feeder_deck[move].empty?
  end

  def change_visible_deck(deck)
    size = get_size(deck)
    deck[size - 1].visible = 1 if !deck.empty
  end

  def get_size_feeder(move)
    @feeder_deck[move].size
  end

  def get_size_deck(deck)
    deck.size
  end
end