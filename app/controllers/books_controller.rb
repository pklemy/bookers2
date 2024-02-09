class BooksController < ApplicationController
  
  # def new
  #   @book_new = Book.new
  # end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def top
    
  end

  def show
    # @user = current_user
    @book_new = Book.new
    @book = Book.find(params[:id])  
    @user = @book.user
  end

  def index
    @book_new = Book.new
    @user = current_user
    @books = Book.all
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
