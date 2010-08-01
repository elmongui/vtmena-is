class RegisteredClass < ActiveRecord::Base
	belongs_to :student
	belongs_to :class_schedule
end
