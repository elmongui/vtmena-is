class ClassSession < ActiveRecord::Base
	belongs_to :class_schedule

	def time_s(time)
		time.nil? ? "" : time.strftime("%I:%M%p")
	end
	
	
	def class_time(from, to)
		time_s(from) + "-" + time_s(to)
	end
	
	
	def au_time
		class_time(attributes["au_time_from"], attributes["au_time_to"])
	end
	
	
	def vt_time
		if attributes["au_time_from"].nil? or attributes["au_time_to"].nil?
			"-"
		else
			class_time(attributes["au_time_from"]-(7*60*60), attributes["au_time_to"]-(7*60*60))
		end
	end
end
