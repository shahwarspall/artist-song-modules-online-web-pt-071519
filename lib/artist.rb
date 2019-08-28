require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable:: Instancemethods, Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

 

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #binding.pry
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
    #binding.pry
  end

 
end