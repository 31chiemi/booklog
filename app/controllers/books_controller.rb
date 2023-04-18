class BooksController < ApplicationController
  before_action :set_book, only: [:destroy, :show, :edit, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    #@books = Book.includes(:user).order("genre_id DESC")
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
    @book.destroy
  end

  def edit
  end

  def update
    @book.update(book_params)
  end

  def show
  end
  private
  def book_params
    params.require(:book).permit(:genre_id, :image).merge(user_id: current_user.id)
  end
  
  def set_book
    @book = Book.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
