class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image
      t.string :category
      t.decimal :price
      t.decimal :rating
      t.text :description

      t.timestamps null: false
    end
  end
end
