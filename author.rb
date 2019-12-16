class Author
    @@all = []

    attr_reader :name
    attr_accessor :books

    def initialize(name)
        @name = name
        @books = books

        @@all << self
    end

    def self.all
        @@all
    end

    def books
        binding.pry
        all_books = Book.all.map do |books|
            books.books == self
        end
        all_books
    end

   
        


end 

# - `Author.all`
# should return all of the authors
# - `Author#books`
# should return all of the books an author has written
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words