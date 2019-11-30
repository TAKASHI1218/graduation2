class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :picture
      t.integer :price
      t.text :comment
    end
  end
end
