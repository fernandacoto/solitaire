# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create

Deck.create(game_id: 1)

cards_spades = 2
Card.create(number: "A", suit: "Spades", in_use: 0, deck_id: 1)
while cards_spades < 11
  Card.create(number: cards_spades.to_s, suit: "Spades", in_use: 0, deck_id: 1)
  cards_spades += 1
end
Card.create(number: "J", suit: "Spades", in_use: 0, deck_id: 1)
Card.create(number: "Q", suit: "Spades", in_use: 0, deck_id: 1)
Card.create(number: "K", suit: "Spades", in_use: 0, deck_id: 1)

cards_club = 2
Card.create(number: "A", suit: "Club", in_use: 0, deck_id: 1)
while cards_club < 11
  Card.create(number: cards_club.to_s, suit: "Club", in_use: 0, deck_id: 1)
  cards_club += 1
end
Card.create(number: "J", suit: "Club", in_use: 0, deck_id: 1)
Card.create(number: "Q", suit: "Club", in_use: 0, deck_id: 1)
Card.create(number: "K", suit: "Club", in_use: 0, deck_id: 1)

cards_hearts = 2
Card.create(number: "A", suit: "Hearts", in_use: 0, deck_id: 1)
while cards_hearts < 11
  Card.create(number: cards_hearts.to_s, suit: "Hearts", in_use: 0, deck_id: 1)
  cards_hearts += 1
end
Card.create(number: "J", suit: "Hearts", in_use: 0, deck_id: 1)
Card.create(number: "Q", suit: "Hearts", in_use: 0, deck_id: 1)
Card.create(number: "K", suit: "Hearts", in_use: 0, deck_id: 1)

cards_diamonds = 2
Card.create(number: "A", suit: "Diamonds", in_use: 0, deck_id: 1)
while cards_diamonds < 11
  Card.create(number: cards_diamonds.to_s, suit: "Diamonds", in_use: 0, deck_id: 1)
  cards_diamonds += 1
end
Card.create(number: "J", suit: "Diamonds", in_use: 0, deck_id: 1)
Card.create(number: "Q", suit: "Diamonds", in_use: 0, deck_id: 1)
Card.create(number: "K", suit: "Diamonds", in_use: 0, deck_id: 1)
