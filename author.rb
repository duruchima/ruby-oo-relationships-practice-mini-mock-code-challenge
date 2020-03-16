class Author 
@@all = []
attr_accessor 
attr_reader :name
def initialize(name)
    @name = name
    Author.all << self
end

def books
    Book.all.select {|book| book.author == self}
end

def write_book(title, word_count)
    Book.new(title, self, word_count)
end

def total_words
    total = 0
    books.map {|books| total += books.word_count}
    total
end

def self.most_words
    most = 0
    top_writer = ""
    self.all.each do |authors|
        words = authors.total_words
        if words > most
            most = words
            top_writer = authors.name
        end
    end
    top_writer
end

def self.least_words
    least = 1000
    most_concise_writer = ""
    self.all.each do |authors|
        words = authors.total_words
        if words < least
            least = words
            most_concise_writer = authors.name
        end
    end
    most_concise_writer
end    

def self.all
    @@all
end

end