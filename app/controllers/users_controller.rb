class UsersController < ApplicationController
	#before_filter :require_admin

	# GET /users
	# GET /users.xml
	def index
		@users = User.find(:all, :order => :name)
		respond_to do |format|
			format.html # index.html.erb
			format.xml { render :xml => @users }
		end
	end
	
	
	# GET /users/1
	# GET /users/1.xml
	def show
		@user = User.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.xml { render :xml => @user }
		end
	end
	
	
	# GET /users/new
	# GET /users/new.xml
	def new
		@user = User.new
		respond_to do |format|
			format.html # new.html.erb
			format.xml { render :xml => @user }
		end
	end

	
	# GET /users/1/edit
	def edit
		@user = User.find(params[:id])
	end

	
	# POST /users
	# POST /users.xml
	def create
		@user = User.new(params[:user])
		respond_to do |format|
			if @user.save
				@acl = AccessControlList.new
				@acl.user_id = @user.id
				@acl.user_mgmt = 'none'
				@acl.student_mgmt = 'none'
				@acl.course_mgmt = 'none'
				@acl.library_mgmt = 'none'
				if @acl.save
					flash[:notice] = "User #{@user.name} was successfully created."
					format.html { redirect_to(:action=>'index') }
					format.xml { render :xml => @user, :status => :created, :location => @user }
				else
					@user.destroy
					format.html { render :action => "new" }
					format.xml { render :xml => @acl.errors, :status => :unprocessable_entity }
				end
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	
	# PUT /users/1
	# PUT /users/1.xml
	def update
		@user = User.find(params[:id])
		respond_to do |format|
			if @user.update_attributes(params[:user])
				flash[:notice] = "User #{@user.name} was successfully updated."
				format.html { redirect_to(:action=>'index' ) }
				format.xml { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	
	# DELETE /users/1
	# DELETE /users/1.xml
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		respond_to do |format|
			format.html { redirect_to(users_url) }
			format.xml { head :ok }
		end
	end

	
private

	def require_admin
		unless session[:user_id] && User.access?(session[:user_id], 0)
			flash[:notice] = "Admins only may manage users" + User.access?(session[:user_id], 0).inspect
			redirect_away({:controller=>"info_manager", :action => "show"})
			return false
		end
	end
end
