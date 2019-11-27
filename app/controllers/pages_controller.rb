class PagesController < ApplicationController
  def home
  end

  def dashboard
    if params[:status] == 'livres'
      @books = Book.where(user: current_user)
    else
      @transactions = Transaction.where(user: current_user)
    end

  end
end
