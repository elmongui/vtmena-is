class Instructor < ActiveRecord::Base
	belongs_to :class_schedule
	belongs_to :professor

	def to_label
		"#{professor.to_label}"
		"#{class_schedule.to_label}"
	end
end
