class TransactionsController < ApplicationController
  def dashboard

  end

  def index
    @book = Book.find(params[:book_id])
    @transactions = Transaction.find(params[:user_id])
  end

  def new
    @book = Book.find(params[:book_id])
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.book = Book.find(params[:id])
    @transaction.save

    redirect_to transactions_path
  end

  def update
    @transaction.update(transaction_params)
  end

  def destroy
    @transaction.destroy

    redirect_to transactions_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date_begin, :end_date)
  end
end
