require 'pry'
require_relative './book'
require_relative './author'



a1 = Author.new("Richard Richard")
a2 = Author.new("Johnny Rocket")
a3 = Author.new("Daniel Jenkin")
a4 = Author.new("Kenny Smith")

b1 = Book.new("First and Last", "Richard Richard")
b2 = Book.new("Rocket To The Moon", "Johnny Rocket")
b3 = Book.new("Scooby", "Daniel Jenkin")
b4 = Book.new("Smith's First Job", "Kenny Smith")
b5 = Book.new("Rockets To Mars", "Johnny Rocket")
b6 = Book.new("Trash Towards The Sun", "Johnny Rocket")
b7 = Book.new("Last and First", "Richard Richard")
b8 = Book.new("All Rockets Must Come Down", "Johnny Rocket")






binding.pry


