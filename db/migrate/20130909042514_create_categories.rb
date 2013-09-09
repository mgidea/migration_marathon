class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :fiction
      t.string :non_fiction
      t.string :crime
      t.string :mystery
      t.string :science_fiction

      t.timestamps
    end
  end
end
