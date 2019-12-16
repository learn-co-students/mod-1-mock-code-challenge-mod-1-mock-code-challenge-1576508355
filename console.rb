require 'pry'
require_relative './book'
require_relative './author'

happy_feet = Book.new("Ted", "Happy_Feet", 1000)
hello_world = Book.new("Susan", "Hello_World", 1500)
about_ducks = Book.new("Eva", "About Ducks", 3000)
about_geese = Book.new("Eva", "About Geese", 3500)

ted = Author.new("Ted")
susan = Author.new("Susan")
eva = Author.new("Eva")




binding.pry
"hello"

