require 'rails_helper'

# :id, :name, :image, :category, :price, :rating, :description

describe PetsController do
  describe "GET #index" do
    let(:pet) { Pet.create(
                      name: "barry",
                      image: "image.jpg",
                      category: "dog",
                      price: 10,
                      rating: 5,
                      description: "What a pet!"
                      ) }

    before do
      get :index
    end

    it "assigns @pets" do
      expect(assigns(:pets)).to eq([pet])
    end

    it "renders the index template" do
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    let(:pet) { Pet.create(
                      name: "barry",
                      image: "image.jpg",
                      category: "dog",
                      price: 10,
                      rating: 5,
                      description: "What a pet!"
                      ) }
    before do
      get :show, id: pet.id
    end

    it "assigns @pet" do
      expect(assigns(:pet)).to eq(pet)
    end

    it "renders the show template" do
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it "assigns @pet as new pet" do
      expect(assigns(:pet)).to be_a_new(Pet)
    end

    it "renders the new template" do
      expect(response).to render_template("new")
    end
  end

  describe "GET #edit" do
    let(:pet) { Pet.create(
                      name: "barry",
                      image: "image.jpg",
                      category: "dog",
                      price: 10,
                      rating: 5,
                      description: "What a pet!"
                      ) }
    before do
      get :edit, id: pet.id
    end

    it "assigns @pet" do
      expect(assigns(:pet)).to eq(pet)
    end

    it "renders the edit template" do
      expect(response).to render_template("edit")
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_params) { { pet: {
                        name: "barry",
                        image: "image.jpg",
                        category: "dog",
                        price: 10,
                        rating: 5,
                        description: "What a pet!" } }
                        }

      it "creates a new pet" do
        expect{
          post :create, valid_params
        }.to change(Pet, :count).by(1)
      end

      it "assigns newly created pet to @pet" do
        post :create, valid_params
        expect(assigns(:pet)).to be_a(Pet)
        expect(assigns(:pet)).to be_persisted
      end

      it "redirects to the show page" do
        post :create, valid_params
        expect(response).to redirect_to(pets_url)
      end
    end

    context "with invalid params" do
      let(:invalid_params) { { pet: {
                          name: "barry",
                          image: "image.jpg",
                          category: "dog",
                          price: 10,
                          rating: 5,
                          description: nil } }
                          }
      it "is assigns newly created but unsaved @pet" do
        post :create, invalid_params
        expect(assigns(:pet)).to be_a_new(Pet)
      end

      it "re-renders the new template" do
        post :create, invalid_params
        expect(response).to render_template("new")
      end
    end
  end 

  describe "DELETE #destroy" do
    it "destroys the requested pet" do
      pet = Pet.create(
                        name: "barry",
                        image: "image.jpg",
                        category: "dog",
                        price: 10,
                        rating: 5,
                        description: "What a pet!"
                        )
      expect {
        delete :destroy, :id => pet.id
      }.to change(Pet, :count).by(-1)
    end

    it "redirects to the pets list" do
      pet = Pet.create(
                        name: "barry",
                        image: "image.jpg",
                        category: "dog",
                        price: 10,
                        rating: 5,
                        description: "What a pet!"
                        )
      delete :destroy, :id => pet.id
      expect(response).to redirect_to(pets_url)
    end
  end
end
