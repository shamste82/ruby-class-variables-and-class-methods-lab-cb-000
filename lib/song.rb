class Song

  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count 
    @@count
  end
  
  def genres
    @@genre
  end

  def artists
    @@artists
  end
  
  def genre_count
    genre_count = Hash.new 
    
    @@genres.each do |x|
      if x == "Rap"
          genre_count["Rap"] += 1
      else
        genre_count[x] = 1
      end

      
        
  end
  

end
