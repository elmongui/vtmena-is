class ClassSchedulesController < ApplicationController
	active_scaffold :class_schedule do |config|
		config.columns = [:id, :course, :au_crn, :semester, :year, :class_sessions, :vtel, :offered, :instructors, :registered_classes]
		create.columns.exclude :id, :class_sessions
		update.columns.exclude :id, :class_sessions
		config.list.sorting = [{:year => :asc}, {:semester => :asc}]
	end
end
