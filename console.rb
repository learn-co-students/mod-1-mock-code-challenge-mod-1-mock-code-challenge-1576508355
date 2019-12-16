require 'pry'
require_relative './book'
require_relative './author'

# Author.new(name, books)
jk = Author.new("jk","hp1")
james = Author.new("James.p",["learn how to save these as book objects"])
jk.write_book("jk","hpmysteries5",10)
jk.write_book("jk","hpmysteries2",3555)
# Book.new(author, title, wordcount)
Am = Book.new(jk,"AM news with jk", 500)
pm = Book.new(james,"pm is better with james", 5000)

binding.pry


