class ProductLine
  attr_accessor :product_line

  def initialize
  	@product_line = []
  end

  def create_product_line
  	@product_line << [] << [] << [] << []
  	@product_line
  end
end