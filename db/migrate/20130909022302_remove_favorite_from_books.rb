class RemoveFavoriteFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :favorite
  end

  def down
    add_column :books, :favorite, :integer
  end

end
