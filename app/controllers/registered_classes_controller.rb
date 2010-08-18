class RegisteredClassesController < ApplicationController
	active_scaffold :registered_class do |config|
		config.columns = [:id, :class_schedule, :student, :grade]
		create.columns.exclude :id
		update.columns.exclude :id
	end
end
