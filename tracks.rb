
class Tracks
    attr_reader:album_id, :id, :track_number, :duration_ms, :title 

	def initialize(album_id, id, title, track_number, duration_ms)
      @album_id = album_id
      @title = title
      @id = id
      @track_number = track_number
	  @duration_ms = duration_ms
	end	
    
end
