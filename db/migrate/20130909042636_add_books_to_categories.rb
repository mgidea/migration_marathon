class AddBooksToCategories < ActiveRecord::Migration
  def up
    add_column :categories, :book_id, :integer
  end

  def down
    remove_column :categories, :book_id
  end
end
