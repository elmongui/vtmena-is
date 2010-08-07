class InfoManagerController < ApplicationController
	before_filter :require_auth, :except => 'login'

	def login
		if request.post?
			user = User.authenticate(params[:name], params[:password])
			if user
				session[:auth] = true
				session[:user_id] = user.id
				redirect_back(:action => 'index')
			else
				flash.now[:notice] = "Invalid user/password combination"
			end
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to(:action => "login") if session[:user_id].nil?
	end

	def index
	end
	
	def search_for_student
		flash_redirect("Invalid search parameters", :action => "index") if params[:last_name].nil?

		@students = Student.all( :include => [:vt_info],
								:conditions => ["vt_infos.student_id_number = ? OR \
												vt_infos.student_pid = ? OR \
												last_name = ?", 
												params[:student_id_number].strip, 
												params[:student_pid].strip,
												params[:last_name].strip
												]
								)
		if @students.length == 0
			flash_redirect("No student found!", :action => "index")
		else
			respond_to do |format|
				format.html # search_for_student.html.erb
				format.xml  { render :xml => @students }
			end
		end
	end

	
	def search_for_course
		flash_redirect("Invalid search parameters", :action => "index") if params[:university].nil?

		@courses = Course.all( :include => [:class_schedules],
								:conditions => ["class_schedules.semester = ? OR \
												class_schedules.year = ? OR \
												university = ?", 
												params[:semester], 
												params[:year],
												params[:university]
												]
								)
		if @courses.length == 0
			flash_redirect("No course found!", :action => "index")
		else
			respond_to do |format|
				format.html # search_for_courses.html.erb
				format.xml  { render :xml => @courses }
			end
		end
	end

private

	def require_auth
		unless session[:auth]
			flash[:notice] = "You must be logged in"
			redirect_away(:action => 'login')
			return false
		end
	end
	
end
