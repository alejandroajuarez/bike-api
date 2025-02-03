class CreateBikes < ActiveRecord::Migration[7.2]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.string :model_year
      t.integer :price
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
