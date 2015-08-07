class ActiveSupport::TimeWithZone
	def to_ampm_s
		text = strftime('%I:%M %P')	# '01:23 pm'
		text = text.match(/^0?(.*)/)[1]	# strip leading '0', if it exists
		return text
	end
end

