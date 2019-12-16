class Book

    attr_reader :title, :author, :word_count

    @@all = []

    # INITIALIZATION #

    def initialize(title, author, word_count)   # WORKS #
        @title = title
        @author = author
        @word_count = word_count

        @@all << self
    end

    # INSTANCE METHODS #

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    # END #

end