class Author


    @@all= []

    def initialize(name)
        @name = name
        @@all << self
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def books
        Book.all.select {|x| x.author == self}
    end

    def self.all
        @@all
    end

end
