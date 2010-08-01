class ClassSchedulesController < ApplicationController
	active_scaffold :class_schedule do |config|
		config.columns = [:course, :semester, :year, :vtel, :offered, :instructors, :registered_classes]
		config.list.sorting = [{:year => :asc}, {:semester => :asc}]
	end
end
