class Timer
	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string()
		minutes = (@seconds / 60)
		hours = (minutes / 60)
		@seconds = @seconds - ((minutes)*(60))
		minutes = minutes - ((hours)*(60))
		
		if(hours < 10)
			hours = "0" + hours.to_s
		end
		if(minutes < 10)
			minutes = "0" + minutes.to_s
		end
		if(@seconds < 10)
			@seconds = "0" + seconds.to_s
		end


		"#{hours}:#{minutes}:#{@seconds}"
	end
end