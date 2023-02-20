class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  
    def authors
      articles.collect { |article| article.author }.uniq
    end
  
    def article_titles
      articles.collect { |article| article.title }
    end
  
    def author_names
      authors.collect { |author| author.name }
    end
  
    def contributor_names
      Article.all.filter { |article| article.magazine == self }.map { |article| article.author.name }.uniq
    end
  
    def self.find_by_name(name)
      self.all.find { |magazine| magazine.name == name }
    end
  
    def self.find_by_category(category)
      self.all.select { |magazine| magazine.category == category }
    end
  
    def self.most_popular
      self.all.max_by { |magazine| magazine.contributor_names.count }
    end
  
    def contributor_count
      contributor_names.count
    end
  
    def contributing_authors
      popular_authors = Article.all.filter { |article| article.magazine.name == @name }.map {
        |article|
        article.author.name
      }.tally.each { |key, value| value > 2 }
      popular_authors
    end
  end