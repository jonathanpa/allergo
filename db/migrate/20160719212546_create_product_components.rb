class CreateProductComponents < ActiveRecord::Migration
  def change
    create_table :product_components do |t|
      t.integer :amount
      t.references :ingredient, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
