class Author
    attr_accessor :name
    attr_writer :book

    @@all = []

    def initialize(name)
        @name = name
        

        @@all << self
    end

    def self.all
        @@all 
    end



end


# ### `Author`
# Build the following methods on the Author class

# xxxx- `Author.all`
#       should return all of the authors
# - `Author#books`
#       should return all of the books an author has written
# - `Author#write_book`
#       should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
#       should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
#       should return the author instance who has written the most words
