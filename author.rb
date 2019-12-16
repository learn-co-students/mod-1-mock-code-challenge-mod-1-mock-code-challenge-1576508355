require 'pry'

class Author
  attr_reader :book 

  @@all = []
  @@books = []

  def initialize(book)
    @book = book

    @@books << self.book
    @@all << self

  end

  def self.all
    @@all
  end


  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end


  def self.total_words(word_count)
    total = 0
    self.books.each do |words|
    words += total
    end
  end 


def most_words
  self.all.find do |total_words|
  self.total_words >
  end
end


  def self.books
    @@books
  end 

binding.pry
end
