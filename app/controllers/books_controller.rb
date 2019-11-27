class BooksController < ApplicationController


  def dashboard
    @books = Book.where(user: current_user)

  end

  def index
    @s = params[:search]
    if @s.nil?
      @books = Book.all
    else
      @books = Book.where("name ilike ?", "%#{@s}%")
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    @book.user = current_user
    if @book.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(books_params)
    redirect_to dashboard_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to dashboard_path
  end

  private

  def books_params
    params.require(:book).permit(:name, :author, :picture_id, :category, :price_per_day, :photo)
  end
end
