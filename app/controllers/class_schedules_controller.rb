class ClassSchedulesController < ApplicationController
	active_scaffold :class_schedule do |config|
		config.columns = [:course, :au_crn, :semester, :year, :day, :au_time_from, :au_time_to, :location, :vtel, :offered, :instructors, :registered_classes]
		config.list.sorting = [{:year => :asc}, {:semester => :asc}]
	end
end
