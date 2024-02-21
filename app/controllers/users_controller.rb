class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  
  
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user)
    else
      @users = User.all
      render :edit
    end
    # if @user.update(user_params) # ユーザーの属性を更新
    # redirect_to user_path(@user) # ユーザーの詳細ページへのリダイレクト
    # else
    # render :edit # 更新に失敗した場合は編集ページを再表示
    # end
  end
  
   private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def is_matching_login_user
    user = User.find(params[:id])
    unless user == current_user
      redirect_to user_path(current_user.id)
    end
  end
  
end
