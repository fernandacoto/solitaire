class GameController < ApplicationController
  def play
    params[:movement] ||={}
    @result = ""
    if !params[:movement][:option].blank? and !params[:movement][:stack_number].blank?
      which_case(params[:movement])
      @result = "result in there #{params[:movement][:option]} and #{params[:movement][:stack_number]}"
    end
  end

private

  def which_case(option_move)
    case option_move[:option].to_i
    when 1
      move_from_loading_deck_to_feeder_line(option_move[:stack])
    when 2
      move_from_loading_deck_to_product_line(option_move[:stack])
    when 3
      move_from_feeder_line_to_feeder_line(option_move[:stack])
    when 4
      move_from_feeder_line_to_product_line(option_move[:stack])
    when 5
      move_from_product_line_to_feeder_line(option_move[:stack])
    end
  end

  def move_from_loading_deck_to_feeder_line(movement)

  end

  def move_from_loading_deck_to_product_line(movement)

  end

  def move_from_feeder_line_to_feeder_line(movement)

  end

  def move_from_feeder_line_to_product_line(movement)

  end

  def move_from_product_line_to_feeder_line(movement)

  end

end
