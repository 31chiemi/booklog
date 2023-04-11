class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :content, :genre_id, :image).merge(user_id: current_user.id)
  end

end
