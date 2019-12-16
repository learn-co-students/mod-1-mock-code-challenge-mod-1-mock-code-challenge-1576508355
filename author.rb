class Author

    attr_reader :name, :books

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def books
        Book.all.map {|book_instance| book_instance if book_instance.author == self}.compact
    end

    def write_book(title, word_count)
        Book.new(title, word_count, self)
    end

    def total_words
        total = 0
        books.each do |book_instance|
            total += book_instance.word_count
        end
        total
    end

    # return the author instance who has written the most words
    def self.most_words
        # call total_words method on all the authors
        # return biggest num
        @@all.max_by do |author_instance|
            author_instance.total_words
        end
    end

    def self.all
        @@all
    end
end

