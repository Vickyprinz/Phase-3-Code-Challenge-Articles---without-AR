class Magazine
    attr_accessor :name, :category
    @@all = []

    def initialize(name, category)
      @name = name
      @category = category
      ##shovel each new instance into an array
      @@all << self
    end