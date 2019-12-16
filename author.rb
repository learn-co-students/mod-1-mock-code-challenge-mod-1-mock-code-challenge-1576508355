
class Author

    attr_reader :name

    @@all = []

    # INITIALIZE #

    def initialize(name)    # WORKS #
        @name = name

        @@all << self
    end

    # INSTANCE METHODS #

    def write_book(title, word_count)   # WORKS #
        Book.new(title, self, word_count)
    end

    def books   # WORKS #
        Book.all.select {|book| book.author == self}
    end

    def total_words # WORKS #
        word_counts = books.collect {|book| book.word_count}
        total_words = word_counts.inject {|sum, n| sum += n}
        total_words
    end

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    def self.most_words # WORKS #
        most_words = 0
        author_result = "none"
        @@all.each do |author|
            total = author.total_words
            if total > most_words
                most_words = total
                author_result = author
            else next
            end
        end
        author_result
    end

    # END #

end
