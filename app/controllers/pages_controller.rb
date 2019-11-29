class PagesController < ApplicationController
  def home
  end

  def dashboard

      @books = current_user.books

      @transactions = current_user.transactions
      @transactionsOwner = Transaction.where(book_id: current_user.books.ids)


  end

  def update
    @t = Transaction.find(params[:id])
    @t.status = params[:status]
    @t.update(transaction_params)
    redirect_to dashboard_path("transations")
  end

  private

  def transaction_params
    params.permit(:status)
  end
end
