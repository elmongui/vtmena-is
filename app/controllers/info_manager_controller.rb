class InfoManagerController < ApplicationController
	before_filter :require_auth, :except => 'login'
	protect_from_forgery :only => [:create, :update, :destroy]

	def login
		if request.post?
			user = User.authenticate(params[:name], params[:password])
			if user
				session[:user_id] = user.id
				redirect_back(:action => 'show')
			else
				flash.now[:notice] = "Invalid user/password combination"
			end
		end
	end

	def logout
		session[:user_id] = nil
		flash_redirect("User successfully logged out", :action => "login") 
	end

	
	def search_for_student
		if params[:last_name].nil?
			@students = Student.all
		else
			@students = Student.all(:include => [:vt_info],
									:conditions => ["vt_infos.student_id_number = ? OR \
													vt_infos.student_pid = ? OR \
													last_name = ?", 
													params[:student_id_number].strip, 
													params[:student_pid].strip,
													params[:last_name].strip
													]
									)
		end
		if @students.length == 0
			flash_redirect("No student found!", :action => "show")
		else
			respond_to do |format|
				format.html # search_for_student.html.erb
				format.xml  { render :xml => @students }
			end
		end
	end

	
	def list_semester_schedule
		if params[:semester].nil? or params[:year].nil? or params[:semester]=="" or params[:year]==""
			flash_redirect("Both semester and year must be selected.", :action => "show") 
		else
			@class_sessions = ClassSession.all(:include => [:class_schedule],
									:conditions => ["class_schedules.semester = ? AND \
													class_schedules.year = ?", 
													params[:semester], 
													params[:year],
													],
									:order => "day asc, 
									           au_time_from asc"
								)
			if @class_sessions.length == 0
				flash_redirect("No class sessions found!", :action => "show")
			else
				respond_to do |format|
					format.html # list_semester_schedule.html.erb
					format.xml  { render :xml => @courses }
				end
			end
		end
	end

	
private

	def require_auth
		unless session[:user_id]
			flash[:notice] = "You must be logged in"
			redirect_away(:action => 'login')
			return false
		end
	end
	
end
