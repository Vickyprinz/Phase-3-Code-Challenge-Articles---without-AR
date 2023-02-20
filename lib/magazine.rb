class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      ##shovel each new instance into an array
      @@all << self
    end
  
    def self.all
      @@all
    end
  
       ##helper function
    def magazine_articles
      Article.all.select{|article| article.magazine.name == self.name}
    end
  
    def contributors
      magazine_articles.collect{|article| article.author}.uniq
    end
  
    def self.find_by_name(name)
      find_magazines = self.all.select { |magazine| magazine.name == name}
      find_magazines.first
    end
  
    def article_titles
      magazine_articles.collect{|article| article.title}
    end
  
    def contributing_authors
      #tally authors then map through the articles and get array of authors
      magazine_authors = magazine_articles.collect{|article| article.author.name}
      magazine_authors.tally.each {|key, value|  value > 2}
      magazine_authors
    end
  end