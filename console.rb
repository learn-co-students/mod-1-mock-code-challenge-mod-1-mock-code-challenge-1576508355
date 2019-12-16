require 'pry'
require_relative './book'
require_relative './author'

b1 = Book.new("The Yo", "Ay yao", 10000)

a1 = Author.new("The Yo")

binding.pry


