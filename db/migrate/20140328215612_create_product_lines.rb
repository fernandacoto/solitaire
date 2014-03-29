class CreateProductLines < ActiveRecord::Migration
  def change
    create_table :product_lines do |t|
     t.integer :card_id
     t.integer :game_id 
    end
  end
end
