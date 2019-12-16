class Book
    @@all = []
    attr_reader :title, :author, :word_count

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count

        @@all << self
    end
    

    def self.all
        @@all
    end

    def author
        Book.all.name == name
        
    end




end

# - `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book

