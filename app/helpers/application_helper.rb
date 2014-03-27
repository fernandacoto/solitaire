module ApplicationHelper
  def return_feeder_line(feeder_line)
    visible_cards = []
    feeder_line.each do |card|
      if card.visible == 1
        visible_cards << card
      end
    end
    visible_cards
  end
end
