class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(n, a, g)
    @name = n
    @artist = a
    @genre = g
    @@count += 1
    @@genres.push(g)
    @@artists.push(a)
  end

  def self.count
    @@count
  end

  def self.genres
    genres_unique = @@genres.uniq
    genres_unique
  end

  def self.artists
    artists_unique = @@artists.uniq
    artists_unique
  end

  def self.genre_count
    genre_count = Hash.new(0)

    @@genres.each do |x|
      if x == "rap"
          genre_count[x] += 1
      else
        genre_count[x] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)

    @@artists.each do |x|
      if x == @artist
        artist_count["Metallica"] += 1
      else
        artist_count[x] = 1
      end
    end
    artist_count
  end

end
