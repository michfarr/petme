class UsersController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
  end

  def index
    @users = User.order(name: :asc)
  end

  def show
    @user = User.find( params[:id] )
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id

      redirect_to users_path, notice: "Hi, #{@user.name}!"
    else
      render :new
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :profile_picture)
    end
end
