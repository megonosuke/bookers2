class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @books = @user.books
  end

  def index
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      @books = Book.all
      render :show
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, :prpfile_image, :introduction)
  end

end
