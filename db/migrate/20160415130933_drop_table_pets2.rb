class DropTablePets2 < ActiveRecord::Migration
  def change
    drop_table :pets
  end
end
