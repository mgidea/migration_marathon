class Book < ActiveRecord::Base
  belongs_to :checkout
  belongs_to :categorization
  belongs_to :category
end
