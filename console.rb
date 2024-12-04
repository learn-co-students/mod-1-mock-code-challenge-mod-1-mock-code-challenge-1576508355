require 'pry'
require_relative './book'
require_relative './author'

joe = Author.new("Joe")
jill = Author.new("Jill")
steve = Author.new("Steve")
alex = Author.new("Alex")
bob = Author.new("Bob")
stacy = Author.new("Stacy")

book1 = Book.new("Book 1", joe, 5000)
book2 = Book.new("Book 2", joe, 6000)
book3 = Book.new("Book 3", joe, 4000)
book4 = Book.new("Book 4", jill, 5000)
book5 = Book.new("Book 5", steve, 6000)
book6 = Book.new("Book 6", alex, 7000)
book7 = Book.new("Book 7", alex, 3500)
book8 = Book.new("Book 8", bob, 20000)
book9 = Book.new("Book 9", stacy, 7200)

binding.pry


