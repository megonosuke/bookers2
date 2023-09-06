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
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
