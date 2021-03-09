class Song
    attr_accessor :artist, :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end

    def artist_name
      name = nil
      if artist
        name = @artist.name
      end
      name
    end

  end 