class Song
    attr_accessor :name, :artist, :genre
    @@count =0
    @@genres = []
    @@artists =[]

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count +=1
    end

    def self.count
        @@count

    end

    def self.genres
        @@genres.uniq


    end

    def self.artists
        @@artists.uniq
    end

   
    def self.genre_count
        genre_count={}
        @@genres.each do |genre|

            if genre_count[genre]
                genre_count[genre] +=1
            else
                genre_count[genre]=1
            end
            
        end
        genre_count
    end

    def self.artist_count
            artist_count = {}
            @@artists.each do |artist|
              if artist_count[artist]
                artist_count[artist] += 1
              else
                artist_count[artist] = 1
              end
            end
            artist_count
        
    end
            


    
end
bey = Song.new('Magic','Beyounce', 'RnB')
jay = Song.new('Slowly','Bieber','Pop')
chris = Song.new('Run down','Nicky Minaj','Rap')
puts bey.name
puts Song.count
puts Song.genres
puts Song.artists
puts Song.genre_count
