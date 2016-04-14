class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def User
    @user = User.find( params[:user_id] )

    @pets = Pet.where( user: @user ).order(created_at: :desc )
  end
  # GET /pets
  # GET /pets.json
  def index

    if params[:search]
      pets = Pet.where(name: params[:search] )
      if pets.present?
        @pets = pets
      else
        @pets = Pet.all.order('created_at DESC')
      end
    else
      @pets = Pet.all.order('created_at DESC')
    end
    # def index
    #    if params[:search]
    #      @users = User.where(city: params[:search])
    #      unless @users.count > 0
    #        @users = User.all.order('created_at DESC')
    #      end
    #    else
    #      @users = User.all.order('created_at DESC')
    #    end
    #  end


  end


  # GET /pets/1
  # GET /pets/1.json
  def show
    @pet = Pet.find( params[:id] )
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new( pet_params, user: current_user )

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :image, :category, :price, :rating, :description)
    end
end
