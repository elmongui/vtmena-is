class InfoManagerController < ApplicationController
	before_filter :require_auth, :except => 'login'

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
			flash_redirect("Invalid search parameters", :action => "show") 
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
			if @students.length == 0
				flash_redirect("No student found!", :action => "show")
			else
				respond_to do |format|
					format.html # search_for_student.html.erb
					format.xml  { render :xml => @students }
				end
			end
		end
	end

	
	def search_for_course
		if params[:university].nil?
			flash_redirect("Invalid search parameters", :action => "show") 
		else
			@courses = Course.all( 	:include => [:class_schedules],
									:conditions => ["class_schedules.semester = ? OR \
													class_schedules.year = ? OR \
													university = ?", 
													params[:semester], 
													params[:year],
													params[:university]
													]
								)
			if @courses.length == 0
				flash_redirect("No course found!", :action => "show")
			else
				respond_to do |format|
					format.html # search_for_courses.html.erb
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
