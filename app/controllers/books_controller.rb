class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params[:book].permit!)
    redirect_to action: "show", id: @book.id
  end

  def create
    @book = Book.create(params[:book].permit!)
    redirect_to action: "show", id: @book.id
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: "index"
  end
end
