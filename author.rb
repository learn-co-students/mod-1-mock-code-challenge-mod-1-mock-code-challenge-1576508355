class Author


    @@all= []

    def initialize(name)
        @name = name
        @@all << self
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def books #works
        Book.all.select {|x| x.author == self}
    end

    def total_words
        #gather all word_count instances for author
        #old_way --- didnt work
            #---total_count = 0
            #---self.books.each {|x| x.total_count == word_count}
            #---total_count += word_count
        #add those numbers and produce a sum
            #---total_count.sum(word_count)

        #correct_way from review
        total_count = books.map {|x| x.word_count}
        total_count.sum
    end

    def self.most_words
        #compare total words of different authors
        
    end

    def self.all
        @@all
    end

end
