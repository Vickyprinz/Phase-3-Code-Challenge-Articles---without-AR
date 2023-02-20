class Author
    attr_reader :name

    def initialize(name)
        @name = name
      end
    
      def articles
        Article.all.select{|article| article.author.name == self.name}
      end
    
      def magazines
        all_magazines = articles.map{ |article| article.magazine}
        all_magazines.uniq
      end
end