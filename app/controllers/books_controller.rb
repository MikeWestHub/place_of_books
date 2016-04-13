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
  end
end
