require 'rails_helper'

describe Pet do
  describe "validations" do

    it "requires a name" do
      pet = Pet.new( name: "" )
      pet.valid?
      expect( pet.errors ).to have_key( :name )
    end

    it "requires an image" do
      pet = Pet.new( image: "" )
      pet.valid?
      expect( pet.errors ).to have_key( :image )
    end

    it "requires a price" do
      pet = Pet.new( price: "" )
      pet.valid?
      expect( pet.errors ).to have_key( :price )
    end

    it "requires a description" do
      pet = Pet.new( description: "" )
      pet.valid?
      expect( pet.errors ).to have_key( :description )
    end
  end
end
