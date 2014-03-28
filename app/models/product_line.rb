class ProductLine
  attr_accessor :product_line, :feeder_deck, :loading_deck

  def initialize
  	@product_line = []
  end

  def create_product_line
  	@product_line << [] << [] << [] << []
  	@product_line
  end

  def move_from_feeder_line(feeder_move,product_move,feeder_deck)
    feeder_line_size = feeder_deck[feeder_move].size
    product_line_size = @product_line[product_move].size
    if !@product_line[product_move].empty?
      @product_line[product_move][product_line_size - 1].visible = 0	
    end
    feeder_deck[feeder_move][feeder_line_size - 1].state = "PL"
    @product_line[product_move] << feeder_deck[feeder_move][feeder_line_size - 1]
    feeder_deck[feeder_move].delete_at(feeder_line_size - 1)
    if !feeder_deck[feeder_move].empty?
      feeder_deck[feeder_move][feeder_line_size - 1].visible = 1
    end
  end

  def move_from_loading_deck(loading_move,product_move,loading_deck)
  	loading_deck_size = loading_deck.size
    product_line_size = @product_line[product_move].size
    if !@product_line[product_move].empty?
      @product_line[product_move][product_line_size - 1].visible = 0	
    end
    loading_deck[loading_deck_size - 1].state = "PL"
    @product_line[product_move] << loading_deck[loading_deck_size - 1]
    loading_deck.delete_at(loading_deck_size - 1)
    if !loading_deck.empty?
      loading_deck[loading_deck_size - 1].visible = 1
    end
  end
end