def translate(text)
	def translateWord(toTranslate)
		temp = toTranslate
		toAdd = ""
		index = 0
		temp.split("").each do |i|
			if(i == "b" || i == "c" || i == "d" || i == "f" || i == "g" || i == "h" || i == "j" || i == "k" || i == "l" || i == "m" || i == "n" || i == "p" || i == "q" || i == "r" || i == "s" || i == "t" || i == "v" || i == "x" || i == "z")
				toAdd << i
				index += 1
			elsif(temp[(temp.index(i)) - 1] == "q" && i == "u")
				toAdd << i
				index += 1
			else
				break
			end
		end
		temp << toAdd << "ay"
		return temp[index..-1]
	end
	returnArray = text.split(" ")
	returnString = ""
	returnArray.each do |x|
		returnString << translateWord(x) << " "
	end
	return returnString[0..-2]
end