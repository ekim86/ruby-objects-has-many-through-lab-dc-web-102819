class Genre

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # At each iteration, take the song that is passed in and perform the changes described in the block
    # then save return value in new array. There will be as many elements in the new array as the old
    collected  = songs.collect do |song|
      #  This "val" does nothing because it's not returned
      val = 1 + 3
      song.artist
    end
    # At each iteration,take the song that is passed in, perform some boolean comparison described in the block
    #  then only save the song passed in into the new array, if the block returned true. There can be anywhere from
    # 0 to array.size elements in the newly returned array.
    # selected = songs.select do |song|

  
    #   song.artist
  end

end
