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
    @transaction.book = @book
    @begin = Date.today
    @end = Date.tomorrow

  end

  def create

    @transaction = Transaction.new()
    @transaction.user = current_user
    @transaction.book = Book.find(params[:book_id])
    db = date_to_array(params[:begin])
    de = date_to_array(params[:end])
    @transaction.date_begin = Date.new(db[0],db[1],db[2])
    @transaction.end_date = Date.new(de[0],de[1],de[2])
    @transaction.status = 'av'
    @transaction.save

    redirect_to dashboard_path
  end

  def update
    @transaction.update(transaction_params)
  end

  def destroy
    @transaction.destroy

    redirect_to transactions_path
  end

  private

  def date_to_array(d)
    a = []
    dd = d.split('-')
    dd.each { |item| a << item.to_i}
    a

  end

  def transaction_params
    params.require(:transaction).permit(:date_begin, :end_date)
  end
end

