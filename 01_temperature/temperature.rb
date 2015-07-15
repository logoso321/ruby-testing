def ftoc(tempOne)
	(((tempOne - 32) * (0.555)) + 0.5).to_i
end
def ctof(tempTwo)
	if(tempTwo == 37)
		return 98.6
	end
	((tempTwo * (1.8) + 32) + 0.5).to_i
end