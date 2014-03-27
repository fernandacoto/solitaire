Solitaire::Application.routes.draw do
 root "game#play"
 post '/', :to =>  "game#play", :as => :game
end
