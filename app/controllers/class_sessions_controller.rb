class ClassSessionsController < ApplicationController
	active_scaffold :class_session do |config|
		config.columns = [:id, :class_schedule_id, :location, :day, :au_time_from, :au_time_to]
		create.columns.exclude :id, :class_schedule_id
		update.columns.exclude :id, :class_schedule_id
		config.list.sorting = [{:day => :asc}, {:au_time_from => :asc}]
		config.columns[:day].form_ui = :select
		config.columns[:day].options = {:options=>[['Sunday',0], ['Monday',1], ['Tuesday',2], ['Wednesday',3], ['Thursday',4], ['Friday',5], ['Saturday',6]]}
		config.columns[:location].form_ui = :select
		config.columns[:location].options = {:options=>[['Class A','Class A'], ['Class B','Class B']]}
	end
end
