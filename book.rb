class Book
    #Reader method for book's title, word count, and author
    attr_reader :title, :word_count, :author

    #Initialize empty array for self.all method
    @@all = []

    #Class is initialized with a title, number of words, and an author object. The instance of the new author is pushed into "all" array.
    def initialize(title, word_count, author)
        @title = title
        @word_count = word_count
        @author = author

        @@all << self
    end

    #Returns an array of all books
    def self.all
        @@all
    end
    
end #end of book class
