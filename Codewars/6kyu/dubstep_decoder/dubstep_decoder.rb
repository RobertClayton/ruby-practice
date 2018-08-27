def song_decoder(song)

	while song.include?("WUB")
		space_point = song.index("WUB")
		song.insert(space_point, " ")
		song.slice!(/WUB/)
	end

	while song.include?("  ")
		double_space_point = song.index("  ")
		song.slice!(double_space_point+1)
	end

	first_place = song[0]

	if first_place == " "
		song.slice!(0)
	end

	song_length = song.length
	last_place = song[song_length - 1]

	if last_place == " "
		song.slice!(song_length-1)
	end

	return song
end
