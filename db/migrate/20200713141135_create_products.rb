class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.float :price
      t.string :product_name
      t.string :string
      t.string :date_purchased
      t.string :string
      t.string :source_name

      t.timestamps
    end
  end
end
