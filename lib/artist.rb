class Artist
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
       @@all << self
    end
      
    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end
   
    def add_song(song)
       # @songs << song
        song.artist = self
    end



    def self.find_or_create_by_name(name)
        # if self.find(name)
        #     self.find(name)
        #   else
        #     self.create(name)
        #   end
        if self.all.find{|d| d.name == name}
            self.all.find{|d| d.name == name}
        else
            Artist.new(name)
        end
    end

    def print_songs()
       songs.each {|song| puts song.name}
        #why are there pipes and why is there song.name?
    end
 

end