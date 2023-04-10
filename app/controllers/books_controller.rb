class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def index
    @book = Book.new
  end

end
