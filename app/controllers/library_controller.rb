class LibraryController < ApplicationController
	before_filter :require_view_for_library_mgmt

	def content
		@books = Book.all(:include => [:library_checkouts],
									:order => "name asc"
								)
		@periodicals = Periodical.all(:include => [:library_checkouts],
									:order => "name asc"
								)

			if @books.length==0 and @periodicals.length==0
				flash_redirect("Library is empty!", :action => "show")
			else
				respond_to do |format|
					format.html # content.html.erb
					format.xml  { render :xml => @courses }
				end
			end
	end
	
	
	def checkout
		@library_item = LibraryItem.find_by_id(params["id"])
		respond_to do |format|
			format.html # checkout.html.erb
			format.xml  { render :xml => @courses }
		end
	end
end
