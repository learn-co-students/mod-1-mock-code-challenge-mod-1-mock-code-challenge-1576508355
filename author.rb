class Author 
    attr_accessor :name
    @@all = []
    def initialize(name, books)
        @name = name 
        @@all = self
        @books = []
    end 

    def self.all
        @@all 
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