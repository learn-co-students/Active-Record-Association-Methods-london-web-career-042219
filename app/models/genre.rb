class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def songs_for_genre
    self.songs
  end


  def song_count
    songs_for_genre.length
  end

  def artist_count
    self.songs.map{|song| song.artist}.length
  end

  def all_artist_names
      self.songs.map{|song| song.artist.name}
  end
end
