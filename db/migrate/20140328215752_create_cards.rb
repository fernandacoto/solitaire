class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.string :suit
      t.boolean :in_use
      t.integer :deck_id
    end
  end
end
