class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :price_per_day
      t.string :name
      t.string :author
      t.string :picture_id
      t.integer :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
