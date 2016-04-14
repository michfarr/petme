class CreateCategoriesPets < ActiveRecord::Migration
  def change
    create_table :categories_pets do |t|
      t.references :category, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
