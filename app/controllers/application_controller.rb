# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	helper :all # include all helpers, all the time
#	protect_from_forgery # See ActionController::RequestForgeryProtection for details

	# Scrub sensitive parameters from your log
	# filter_parameter_logging :password
	ActiveScaffold.set_defaults do |config| 
		config.ignore_columns.add [:created_at, :updated_at, :lock_version]
	end

	
	def flash_redirect(msg, *params)
		flash[:notice] = msg
		redirect_to(*params)
	end


	# redirect somewhere that will eventually return back to here
	def redirect_away(*params)
		session[:original_uri] = request.request_uri
		redirect_to(*params)
	end

	
	# returns the person to either the original url from a redirect_away or to a default url
	def redirect_back(*params)
		uri = session[:original_uri]
		session[:original_uri] = nil
		if uri
			redirect_to uri
		else
			redirect_to(*params)
		end
	end
	

	
private

	def require_admin_for_user_mgmt
		unless session[:user_id] && User.access?(session[:user_id], "user_mgmt", "admin")
			flash[:notice] = "Admins only may manage users"
			redirect_away({:controller=>"info_manager", :action => "show"})
			return false
		end
	end	
		
	def library_mgmt(access)
		unless session[:user_id] && User.access?(session[:user_id], "library_mgmt", access)
			flash[:notice] = "Editors only may " + access.inspect + " library"
			redirect_away({:controller=>"info_manager", :action => "show"})
			return false
		end
	end	
		
	def require_edit_for_library_mgmt
		library_mgmt("edit")
	end	
		
	def require_view_for_library_mgmt
		library_mgmt("view")
	end	
		
	def correspondence_mgmt(access)
		unless session[:user_id] && User.access?(session[:user_id], "correspondence_mgmt", access)
			flash[:notice] = "Only authorized users may " + access.inspect + " the correspondence"
			redirect_away({:controller=>"info_manager", :action => "show"})
			return false
		end
	end	
		
	def require_view_for_correspondence_mgmt
		correspondence_mgmt("view")
	end	
		
end
