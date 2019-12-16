require_relative './book'

class Author

attr_reader :name
attr_accessor :books

@@all = []
@books = []

def initialize(name)
@name = name
@@all << self
end

def write_book(title, word_count)
Book.new(title, self, word_count) 
end

def books # should be done
@books
end

def self.all # should be done
    @@all
end

end # end of class



# `Author.all`
# should return all of the authors
# - `Author#books`
# should return all of the books an author has written
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words