class ChangePricePerDayToBeFloatInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :price_per_day, :float
  end
end
