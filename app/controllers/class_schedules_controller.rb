class ClassSchedulesController < ApplicationController
	active_scaffold :class_schedule do |config|
		config.columns = [:id, :course, :au_crn, :semester, :year, :class_sessions, :vtel, :offered, :instructors, :registered_classes]
		create.columns.exclude :id, :class_sessions
		update.columns.exclude :id, :class_sessions
		config.list.sorting = [{:year => :asc}, {:semester => :asc}]
		config.columns[:year].form_ui = :select
		config.columns[:year].options = {:options=>[[2008,2008], [2009,2009], [2010,2010], [2011,2011], [2012,2012]]}
		config.columns[:semester].form_ui = :select
		config.columns[:semester].options = {:options=>[['Fall','Fall'], ['Spring','Spring'], ['Summer','Summer']]}
	end
	
	def class_schedule_details
		@class_schedule = ClassSchedule.find(params[:id],
								:include => [:instructors, :students])
		
		respond_to do |format|
			format.html # class_schedule_details.html.erb
			format.xml { render :xml => @user }
		end
	end
end
