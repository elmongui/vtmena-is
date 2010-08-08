class UsersController < ApplicationController
	before_filter :require_admin

  active_scaffold :user do |config|

    config.columns = [:name, :hashed_password, :salt, :role]
    list.columns.exclude :hashed_password, :salt
    create.columns.exclude :hashed_password, :salt
	show.columns.exclude :hashed_password, :salt
	update.columns.exclude :hashed_password, :salt
    config.list.sorting = [{ :role => :asc}]
  end
	
	
private

	def require_admin
		unless session[:user] && session[:user].role=="admin"
			flash[:notice] = "Admins only may manage users"
			redirect_away({:controller=>"info_manager", :action => "show"})
			return false
		end
	end
end
