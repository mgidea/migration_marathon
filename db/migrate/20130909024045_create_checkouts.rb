class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
