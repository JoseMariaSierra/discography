module ArtistsHelper
	def has_lps?(artist)
		artist.lps.count > 0
	end
end
