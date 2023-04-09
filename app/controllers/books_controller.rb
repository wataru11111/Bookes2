class BooksController < ApplicationController

def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to '/uesrs/[:id]'
end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])

  end

  def index

  end

  def edit

  end


   private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
