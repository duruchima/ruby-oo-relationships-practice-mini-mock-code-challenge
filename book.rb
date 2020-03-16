class Book
@@all = []
attr_reader :author, :word_count, :title
def initialize(title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    Book.all << self
end

def self.all
    @@all
end

end
