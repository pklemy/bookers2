class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find_by(id: params[:id])

  end

  def edit
  end
  
   private
  def user_params
    params.require(:list).permit(:name, :image, :body)
  end

end
