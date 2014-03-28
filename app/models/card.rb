class Card < ActiveRecord::Base
  attr_accessor :number, :value, :color, :symbol, :state, :visible

  def initialize(attributes = {})
  	@number=attributes[:number]
    @value=attributes[:value]
    @color=attributes[:color]
    @symbol=attributes[:symbol]
    @state=attributes[:state]
    @visible=attributes[:visible]
 end
end
