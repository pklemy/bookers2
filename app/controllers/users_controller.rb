class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    
  end

  def show
    @user = User.find_by(id: params[:id])
    @books = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
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

end
