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
      move_from_feeder_line_to_feeder_line(option_move)
    when 4
      move_from_feeder_line_to_product_line(option_move)
    when 5
      move_from_product_line_to_feeder_line(option_move)
    end
  end

  def move_from_loading_deck_to_feeder_line(movement)
    if valid_movement_feeder_line? movement
    end
  end

  def move_from_loading_deck_to_product_line(movement)
    if valid_movement_product_line? movement
    end
  end

  def move_from_feeder_line_to_feeder_line(movement)
    if valid_movement_feeder_line? movement[:stack_number_init] and valid_movement_feeder_line? movement[:stack_number_destiny]
    end
  end

  def move_from_feeder_line_to_product_line(movement)
    if valid_movement_feeder_line? movement[:stack_number_init] and valid_movement_product_line? movement[:stack_number_destiny]
    end
  end

  def move_from_product_line_to_feeder_line(movement)
    if valid_movement_feeder_line? movement[:stack_number_destiny] and valid_movement_product_line? movement[:stack_number_init]
    end
  end

  def valid_movement_feeder_line?(movement)
    movement.between?(1,7)
  end

  def valid_movement_product_line?(movement)
    movement.between?(1,4)
  end

end
