class CreateTacos < ActiveRecord::Migration[6.1]
  def change
    create_table :tacos do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :image
      t.text :description
      t.string :likes
      t.string :restaurant
      t.string :url
      t.string :location

      t.timestamps
    end
  end
end
