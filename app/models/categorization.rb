class Categorization < ActiveRecord::Base
  has_many :categories
  has_many :books
end
