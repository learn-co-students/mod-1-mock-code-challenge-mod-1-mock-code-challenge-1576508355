require_relative './author'

class Book

attr_reader :title 
attr_accessor :author

@@all = []
@author = []

def initialize(title, author, word_count)
@title = title
@author << author
@@all << self
end

def self.all # should be done
    @@all
end

end # end of class




# `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book