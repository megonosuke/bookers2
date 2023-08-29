class UsersController < ApplicationController
  def show
    @book = Book.new
    @books = Book.all
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def edit
    user = User.find(params[:id])
    @user.update
    redirect_to user_path(:id)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
