class Article

attr_reader :magazine, :title, :author
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
      end
end