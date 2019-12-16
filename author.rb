class Author

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    #returns all the books an author wrote
    def books
        Book.all.select{|book| book.author == self}
    end
    #creates new book
    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end
    #returns total words author wrote over all books
    def total_words
        self.books.sum{|book| book.word_count}
    end
    #returns author with highest word count
    def self.most_words
        Author.all.max_by{|author| author.total_words}
    end
end