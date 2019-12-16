class Book 
    attr_reader :author, :title, :words 

    @@all = []

    def initialize(author, title, words)
        @author = author 
        @title = title
        @words = words

        @@all << self
    end

    def self.all 
        @@all 
    end

    def word_count
    # should return the number of words in the book
        my_book = Book.all.find do |book|
            book.title == self
        end
        my_book.words
        
    end
end
