require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Tom")
a2 = Author.new("Shaquille")
a3 = Author.new("Kevin")
a1.write_book("Wuthering Heights" , 1200)
a1.write_book("House of Leaves", 200)
a2.write_book("Leviathon", 700)
binding.pry


