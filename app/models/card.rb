class Card
  attr_accessor :number, :value, :color, :symbol, :state

  def initialize(attributes = {})
  	@number=attributes[:number]
    @value=attributes[:value]
    @color=attributes[:color]
    @symbol=attributes[:symbol]
    @state=attributes[:state]
 end

 def to_s
   "#{@number} of #{@symbol}"
 end
end