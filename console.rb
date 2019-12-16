require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Dr.Seuss")

b1 = Book.new("Cat In the Hat",a1, 45)
b2 = Book.new("Green Eggs and Ham", a1, 32)
b3 = Book.new("Horton Hears A Who",a1, 35)




binding.pry
0


