class Book

    attr_reader :title, :word_count, :author

    @@all = []

    def initialize(title, word_count, author)
        @title = title
        @word_count = word_count
        @author = author
        @@all << self
    end

    # return the author instance who wrote this book
    def author
        @author
    end

    def title
        @title
    end

    def word_count
        @word_count
    end

    def self.all
        @@all
    end
end
