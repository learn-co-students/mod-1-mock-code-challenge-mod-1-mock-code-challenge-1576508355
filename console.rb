require 'pry'
require_relative './book'
require_relative './author'


author_1 = Author.new("Stephen King")
author_2 = Author.new("Dean Koontz")

book1 = Book.new(author_1, "The Shining", 5026)
book2 = Book.new(author_1, "The Tower Part:1", 10234)
book3 = Book.new(author_1, "Doctor Who", 11234)
book4 = Book.new(author_2, "Sole Survivor", 15000)
book5 = Book.new(author_2, "Phantoms", 18000)
book5 = Book.new(author_2, "Intensity", 25000)
binding.pry


