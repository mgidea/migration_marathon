# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
da_books = [
{
  title: "1984",
  author: "George Orwell",
  rating: 95
},
{
  title: "A Brave New World",
  author: "Aldous Huxley",
  rating: 85
},
{
  title: "Fahrenheit 451",
  author: "Ray Bradbury",
  rating: 75
},
{
  title: "The Hobbit",
  author: "J.R.R Tolkien",
  rating: 80
},
{
  title: "Harry Potter and the Sorcerer's Stone",
  author: "J.K. Rowling",
  rating: 75
}
]

categories_list = [{
  book_id: 1,
  fiction: "no",
  non_fiction: "no",
  crime: "no",
  mystery: "no",
  science_fiction: "yes"
},
{
  book_id: 2,
  fiction: "no",
  non_fiction: "no",
  crime: "no",
  mystery: "no",
  science_fiction: "yes"
},
{
  book_id: 3,
  fiction: "no",
  non_fiction: "no",
  crime: "no",
  mystery: "no",
  science_fiction: "yes"
},
{
  book_id: 4,
  fiction: "no",
  non_fiction: "no",
  crime: "no",
  mystery: "no",
  science_fiction: "yes"
},
{
  book_id: 5,
  fiction: "no",
  non_fiction: "no",
  crime: "no",
  mystery: "no",
  science_fiction: "yes"
}
]

categories_list.each do |option|
  category = Category.where(
    book_id: option[:book_id]
    ).first
  if category.nil?
    category =Category.new(option)
  else
    category.assign_attributes(option)
  end

  category.save!
end

da_books.each do |entry|
book = Book.where(
  title: entry[:title]
  ).first

  if book.nil?
    book = Book.new(entry)
  else
    book.assign_attributes(entry)
  end

  book.save!
end
