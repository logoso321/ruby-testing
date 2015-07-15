class Book
	attr_accessor :title

	def initialize(title = "")
		@title = title
	end

	def title=(toSet)
		temp = toSet.split(" ")
		temp.each_with_index {|value, index|
			if (index == 0)
				value.capitalize!
			else
				next if (value == "the" || value == "over" || value == "and" || value == "a" || value == "an" || value == "in" || value == "of")
				value.capitalize!
			end
		}
		returnString = temp.join(" ")
		@title = returnString
	end
end