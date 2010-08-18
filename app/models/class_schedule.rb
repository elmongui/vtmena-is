class ClassSchedule < ActiveRecord::Base
	belongs_to :course
	has_many :instructors
	has_many :registered_classes
	has_many :students, :through => :registered_classes

	def to_label
		"#{semester} #{year}: #{course.inspect}"
	end
	
	def instructors_as_a_string
		instructors.join(", ")
	end
	
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
		class_time(attributes["au_time_from"]-(7*60*60), attributes["au_time_to"]-(7*60*60))
	end
end
