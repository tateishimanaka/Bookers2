class BooksController < ApplicationController
  def index
   @user = current_user
   @book = Book.new
   @books = Book.all
  end
  
  def create
   @book = Book.new(book_params)
   @book.save
   redirect_to book_path(book.id)
  end
  
  def show
    @book = Book.fund(params[])
  end
  
  def edit 
  end
  
  def update
  end
  
  def destroy 
  end
  
  def book_params
   params.require(:book).permit(:title, :body)
  end
  
end
