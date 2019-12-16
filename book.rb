class Book
    attr_accessor :title
    attr_reader :author 

    @@all = []


    def initialize(title, author)
        @title = title
        @author = author

        @@all << self
    end

    def who_wrote(name)
        self.all.find do |name|
            book.name == name
        end
    end

    def word_count(title)
        title.self.length
    end



    

    def self.all
        @@all 
    end 


end
# ### `Book`
# Build the following methods on the Book class

# xxxxx- `Book.all`
#       should return all of the books
# xxxxx- `Book#author`
#       should return the author instance who wrote this book
# - `Book#title`
#       should return the title of the book
# - `Book#word_count`
#       should return the number of words in the book