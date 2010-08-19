class ClassSchedule < ActiveRecord::Base
	belongs_to :course
	has_many :class_sessions
	has_many :instructors
	has_many :registered_classes
	has_many :students, :through => :registered_classes

	def to_label
		"#{semester} #{year}: #{course.inspect}"
	end
	
	def instructors_as_a_string
		instructors.join(", ")
	end
end
