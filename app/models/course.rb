class Course < ActiveRecord::Base
	has_many :class_schedules

	def to_label
		"#{university} #{number}: #{topic}"
	end
end
