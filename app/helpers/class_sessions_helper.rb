module ClassSessionsHelper
	def time_s(time)
		time.nil? ? "" : time.strftime("%I:%M%p")
	end
	
	def class_session_au_time_from_column(record)
		time_s(record.au_time_from)
	end

	def class_session_au_time_to_column(record)
		time_s(record.au_time_to)
	end
end
