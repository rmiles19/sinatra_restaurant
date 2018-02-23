class CreateDishes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :dishes do |t|
      t.string :title
      t.text :description
      t.text :image
      t.float :price
      t.timestamps
    end
  end
end
