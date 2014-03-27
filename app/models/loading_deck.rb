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
    deck.each do |card|
      if card.state == "None"
      	@loading_deck << card
      	card.state = "LD" 
      end
    end
  end
end 