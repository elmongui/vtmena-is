class AccessControlListsController < ApplicationController
	def index
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @access_control_lists }
		end
	end


	def edit
		@acl_to_edit = AccessControlList.find(params[:id])
	end


	def show
		@access_control_list = AccessControlList.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.xml { render :xml => @access_control_list }
		end
	end


	def update
		@acl = AccessControlList.find(params[:id])

		respond_to do |format|
			if @acl.update_attributes(params[:access_control_list])
				format.html { redirect_to(access_control_lists_path, :notice => "Access Control was successfully updated") }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @acl.errors, :status => :unprocessable_entity }
			end
		end
	end
end
