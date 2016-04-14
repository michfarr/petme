class UsersController < ApplicationController
  def index
    @users = User.order(name: :asc)
  end

  def show
    @user = User.find( params[:id] )
  end
end
