module Utilities

	SECONDS_IN_A_YEAR = 31536000.0
	
	def leap_year?(year)
		#is it a leap year?
		(divisible_by_400?(year)) || (!divisible_by_100?(year)) && (divisible_by_4?(year))
	end

	def percent_seconds_in_year(seconds)
		('%.1f' % ((seconds / SECONDS_IN_A_YEAR) * 100)) + '%'
	end

	def convert_military_time(time)
		hour, minutes = time.split(":")
		minutes, ampm = minutes.split(" ")
		military_time = ""

		# if ampm.downcase != 'am'
		# 	if hour.to_i == 12
		# 		military_time = hour + ":" + minutes
		# 	else
		# 		military_time = (hour.to_i + 12).to_s + ":" + minutes
		# 	end
		# elsif ampm.downcase != 'pm'
		# 	if hour.to_i == 12
		# 		military_time = (hour.to_i - 12).to_s + ":" + minutes
		# 	else
		# 		military_time = hour + ":" + minutes
		# 	end
		# end

		# return military_time

		if ampm.downcase != 'am'
			am
		end
		elseif ampm.downcase != 'pm'
			pm
		end

	def am(time)
		if hour.to_i == 12
				military_time = hour + ":" + minutes
			else
				military_time = (hour.to_i + 12).to_s + ":" + minutes
		end
	end

	def pm(time)
		if hour.to_i == 12
				military_time = (hour.to_i - 12).to_s + ":" + minutes
			else
				military_time = hour + ":" + minutes
		end
	end

	def convert2(x)
		a, b = x.split(":")
		c = ""

		if a.to_i < 12
			c = a + b + " am"
		else
			c = a + b + " pm"
		end

		return c
	end

	def okay(a, b)
		c = false
		if (a.split(":")[0].to_i >= 8 && b || a.split(":")[0].to_i >= 10 && !b) && a.split(":")[1].split(" ")[1] == 'pm'
			c = false
		else
			c = true
		end
		return c
	end

	def span(a, b)
		c = 0
		d = 0
		if a < b
			c = b
			d = a
		else
			c = a
			d = b
		end

		return ('%.1f' % (amount(c)[0..-2].to_f - amount(d)[0..-2].to_f)).to_s + '%'
	end


	private
		
		def divisible_by_100?(x)
			x % 100 == 0
		end

		def divisible_by_400?(x)
			x % 400 == 0
		end

		def divisible_by_4?(x)
			x % 4 == 0
		end


end