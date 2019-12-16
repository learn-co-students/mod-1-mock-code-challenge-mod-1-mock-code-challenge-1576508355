class Author
    attr_accessor 
    attr_reader :author, :books
    @@all = []
    def initialize(author, books)
        @author = author
        @books = books # books << Book.all ??
        
        # if Book.author == self
        #     @books << self
        # end

        @@all << self
    end
    
    def write_book(title, word_count)
        @author = Book.new(author, title, word_count)
        Book.all << @author
    end

    def books
        Book.all.select {|bookiteration| bookiteration.author == self}
    end



    def total_words  #im iterating through book.wordcount in the array above but i do not know how to add each iteration/// fixed it
        sum = self.books.map{|book| book.word_count}.reduce(:+)
        
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

# - `Author.most_words`
# should return the author instance who has written the most words

