class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name
      @songs = []
    end
  
    def add_song(song)
      song.artist = self
      @songs << song
      @@all << song
    end
  
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
        @@all << song
    end

    def self.song_count
        Song.all.count
    end

  end 