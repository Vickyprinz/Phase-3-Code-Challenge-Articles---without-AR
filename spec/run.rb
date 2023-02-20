require 'pry'
require_relative '../config/environment'


###  WRITE YOUR TEST CODE HERE ###
author_1= Author.new("Timothy")
author_2 = Author.new('James')
author_3 = Author.new('Jim')

magazine_1=Magazine.new("outlook1","fashion")
magazine_2=Magazine.new("forbes1","money")
magazine_3=Magazine.new("nation2","business")

art1=Article.new(author_2,magazine_1,"title_one")
art2=Article.new(author_3,magazine_2,"title_two")
art3=Article.new(author_1,magazine_3,"title_three")
art4=Article.new(author_2,magazine_3, "title_four")

author_2.add_article(magazine_1,"title_three")
author_1.add_article(magazine_2,"title_four")
author_3.add_article(magazine_3,"title_five")

binding.pry

