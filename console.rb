require 'pry'
require_relative './book'
require_relative './author'


ted = Author.new("Ted")
susan = Author.new("Susan")
eva = Author.new("Eva")

happy_feet = Book.new(ted, "Happy_Feet", 1000)
hello_world = Book.new(susan, "Hello_World", 1500)
about_ducks = Book.new(eva, "About Ducks", 3000)
about_geese = Book.new(eva, "About Geese", 3500)





binding.pry
"hello"

