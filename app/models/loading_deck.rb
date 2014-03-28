class LoadingDeck 
  attr_accessor :loading_deck, :deck

  def initialize
  	@loading_deck = []
  end

  def create_loading_deck(deck)
  	fill_loading_deck(deck)
  	@loading_deck
  end

  def fill_loading_deck(deck)
    deck.each_with_index do |card, index|
      if card.state == "None"
      	card.state = "LD" 
      	if index == deck.size - 1
      	  card.visible = 1
      	end
      	@loading_deck << card
      end
    end
  end

  def next_card(loading_deck)
    index = find_visible_card(loading_deck)
    loading_deck = update_visible_card(loading_deck,index)
  end

  def find_visible_card(loading_deck)
   size = loading_deck.size
   position = 0
   while position < size
     index = position if loading_deck[position].visible == 1
     position += 1
   end
   index
  end

  def update_visible_card(loading_deck,index)
    case index
    when 0
      loading_deck[index].visible = 0
      loading_deck[(loading_deck.size - 1)].visible = 1
    else
      loading_deck[index].visible = 0
      loading_deck[(index - 1)].visible = 1
    end
    loading_deck
  end
end 
