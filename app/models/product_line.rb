class ProductLine
  attr_accessor :product_line, :feeder_deck

  def initialize
  	@product_line = []
  end

  def create_product_line
  	@product_line << [] << [] << [] << []
  	@product_line
  end

  def move_from_feeder_line(feeder_move,product_move,feeder_deck)
    feeder_line_size = feeder_deck[feeder_move].size
    product_line_size = product_line[product_move].size
    if !product_line_size == 0
      product_line[product_move][product_line_size - 1].visible = 0	
    end
    feeder_deck[feeder_move][feeder_line_size - 1].state = "PL"
    @product_line[product_move] << feeder_deck[feeder_move][feeder_line_size - 1]
    feeder_deck[feeder_move].delete_at(feeder_line_size - 1)
    if !feeder_line_size == 0
      feeder_deck[feeder_move][feeder_line_size - 1].visible = 1
    end
  end
end