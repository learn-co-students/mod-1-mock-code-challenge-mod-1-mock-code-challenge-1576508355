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
        my_books = Book.all.select do |book|
            book.author == self
        end
        my_books.map do |book|
            book.word_count
        end
        
    end

    def self.most_words
    # should return the author instance who has written the most words
        sorted_books = Book.all.max_by do |book|
            book.word_count
        end
        sorted_books[0]
    end

end



