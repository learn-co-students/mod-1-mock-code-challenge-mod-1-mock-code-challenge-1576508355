class Author
    attr_accessor 
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        # if Book.name == self
        #     @books << self
        # end
        @@all << self
    end
    
    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def books
        Book.all.select {|bookiteration| bookiteration.author == self}
    end



    def total_words  #im iterating through book.wordcount in the array above but i do not know how to add each iteration/// fixed it
        self.books.map{|book| book.word_count}.reduce(:+)
    end

    def self.most_words
        self.all.sort_by {|author_instance| author_instance.total_words}
    end

    def self.all
        @@all
    end
end







# - `name.all`
# should return all of the names
# - `name#books`
# should return all of the books an name has written
# - `name#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this name

# - `name.most_words`
# should return the name instance who has written the most words

