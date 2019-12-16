class Author
    
    #Reader method for author's name
    attr_reader :name

    #Initialize empty array for self.all method
    @@all = []

    #Class is initialized with a name. The instance of the new author is pushed into "all" array.
    def initialize(name)
        @name = name

        @@all << self
    end

    #Iterates through all books and returns those written by this instance of author
    def books
        Book.all.select{|book| book.author == self}
    end

    #Creates new book instance
    def write_book(title, word_count)
        Book.new(title, word_count, self)
    end

    #Returns the total number of words this author has written across all of their books
    def total_words
        books.sum{|book| book.word_count}
    end

    #Returns the author with the maximum total number of words written
    def self.most_words
        self.all.max{|author1, author2| author1.total_words <=> author2.total_words}
    end

    #Returns an array of all authors
    def self.all
        @@all
    end

end #end of author class
