class DropTablePets < ActiveRecord::Migration
  def change
    drop_table :categories_pets
  end
end
