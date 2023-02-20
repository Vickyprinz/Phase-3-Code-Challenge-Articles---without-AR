class Author
    attr_reader :name

    def initialize(name)
        @name = name
      end
    
      def articles
        Article.all.select{|article| article.author.name == self.name}
      end
    

end