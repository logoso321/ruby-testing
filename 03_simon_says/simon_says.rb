def echo(word)
	word
end

def shout(wordToShout)
	wordToShout.upcase!
end

def repeat(wordToRepeat, num = 2)
	toReturn = ""
	num.times do
		toReturn << wordToRepeat << " "
	end
	return toReturn[0..-2]
end

def start_of_word(text, point)
	text[0..(point - 1)]
end

def first_word(x)
	space = x.index(' ')
	x[0..(space - 1)]
end

def titleize(movie)
	title = movie.split(" ")
	title.each_with_index {|value, index|
		if (index == 0)
			value.capitalize!
		else
			next if (value == "the") || (value == "over" || value == "and")
			value.capitalize!
		end
	}
	returnString = title.join(" ")
	return returnString
end
