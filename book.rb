require 'pry'
class Book
    attr_accessor :title, :author, :words

    @@all = []

    def initialize(title)
        @title = title
        @words = words

        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def word_count
        words
    end

    def title_name 
        title
    end

    def author_name
        author
    end
end
    