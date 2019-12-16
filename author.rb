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

    def books
        Book.all.select do |book|
            book.author == self 
        end
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)    
    end

    def total_words
        # should return the total number of words that author has written across all of their authored books. 
        total_words = 0
        my_books = self.books 

        my_books.map do |book|
            total_words += book.word_count 
        end  
        total_words
    end

    def self.most_words
    # should return the author instance who has written the most words
        self.all.max_by do |author|
            author.total_words
        end
    end

end



