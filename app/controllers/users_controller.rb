class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @eat = @user.name
  end
end
