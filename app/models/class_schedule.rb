class ClassSchedule < ActiveRecord::Base
	belongs_to :course
	has_many :instructors
	has_many :registered_classes
	has_many :students, :through => :registered_classes

	def to_label
		"#{semester} #{year}: #{course.to_label}"
	end
end
