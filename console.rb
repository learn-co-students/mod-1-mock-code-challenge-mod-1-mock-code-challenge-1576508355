require 'pry'
require_relative './book'
require_relative './author'

#Author.new(name)
a1 = Author.new("Author 1")
a2 = Author.new("Author 2")
a3 = Author.new("Author 3")
a4 = Author.new("Author 4")

# Book.new(title, word_count, author)
b1 = Book.new("Book 1", 33_000, a1)
b2 = Book.new("Book 2", 5_000, a1)
b3 = Book.new("Book 3", 888, a3)
b4 = Book.new("Book 4", 533_000, a1)
b5 = Book.new("Book 5", 7_046, a2)
b6 = Book.new("Book 6", 888, a3)

binding.pry
puts "yay"
# Book >- Author

