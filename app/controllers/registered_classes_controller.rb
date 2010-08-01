class RegisteredClassesController < ApplicationController
	active_scaffold :registered_class do |config|
		config.columns = [:class_schedule, :student, :grade]
	end
end
