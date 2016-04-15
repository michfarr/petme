class UsersController < ApplicationController
  def index
    @users = User.order(name: :asc)
  end

  def show
    @user = User.find( params[:id] )
  end

  def edit
    @user = User.find( params[:id] )
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id

      redirect_to users_path
    else
      render :new
    end
  end

  def update
    @user = User.find( params[:id] )

    if @novel.update_attributes( novel_params )
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
  end
end
