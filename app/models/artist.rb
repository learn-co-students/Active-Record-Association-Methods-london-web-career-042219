class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    get_first_song.genre
  end

  def song_count
    (self.songs).length
  end

  def genres
    self.songs.map{ |song| song.genre}
  end

  def genre_count
    genres.length
  end
end
