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
    @@genres.each do |x|
      if x == "rap"
      else
        @@genres.push(g)
      end
    end
    @@artists.each do |x|
      if x == "Boris Brejcha"
      else
        @@artists.push(a)
      end
    end
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def genre_count
    genre_count = Hash.new

    @@genres.each do |x|
      if x == "rap"
          genre_count["rap"] += 1
      else
        genre_count[x] = 1
      end
    end
  end

  def artist_count
    artist_count = Hash.new

    @@artists.each do |x|
      if x == "Metallica"
        artist_count["Metallica"] += 1
      else
        artist_count[x] = 1
      end
    end
  end

end
