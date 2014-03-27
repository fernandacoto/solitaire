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
end 