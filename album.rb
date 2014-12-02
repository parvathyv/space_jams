require 'pry'

class Album
 
  attr_reader :album_id, :artists, :album_name, :tracks
 
  def initialize(album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def title
    #tracks.map { | hash | hash.title }.join("\n\t- ")
    tracks.map(&:title).join("\n\t- ")
  end 
  
  def duration_ms
    total_duration = tracks.map { | hash | hash.duration_ms.to_f }.reduce(:+).to_f
    total_duration = total_duration / 60000
    (total_duration * 100).round / 100.0
  end 
  
  def summary
    @summary = "\n\tName: #{album_name}\n\tArtists: #{artists}\n\tDuration (min.): #{duration_ms}\n\tTracks:
    \t- #{title}"
  end  

end





