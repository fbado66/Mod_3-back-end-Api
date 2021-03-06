class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :image
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
