def sing_song bottle_count

	lyrics = 
	<<-song
	#{bottle_count} bottles of beer on the wall,
	#{bottle_count} bottles of beer...
	take one down, pass it around,
	#{bottle_count - 1} more #{bottle_count == 2 ? 'bottle' : 'bottles'} of beer on the wall!

	song
	puts lyrics
	bottle_count >= 3 ? sing_song(bottle_count - 1) : last_bottle
end

def last_bottle

	lyrics = 
	<<-song	 
	1 more bottle of beer on the wall,
	1 bottle of beer...
	Take it down, pass it around,
	No more bottles of beer on the wall!
	song
	puts lyrics
end

sing_song 99
