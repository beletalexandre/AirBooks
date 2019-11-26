class PagesController < ApplicationController
  def home
  end

  def dashboard
    @books = Book.where(user: current_user)

  end
end
