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
					format.xml  { render :xml => @books + @periodicals }
				end
			end
	end
	
	
	def checkout_by_item
		@library_item = LibraryItem.find_by_id(params["id"],
											:include => [:library_checkouts])
		respond_to do |format|
			format.html # checkout_by_item.html.erb
			format.xml  { render :xml => @library_item }
		end
	end
	
	
	def borrowers
		@borrowers = Person.all(:include => [:library_checkouts],
								:conditions => ["library_checkouts.person_id is not null"],
								:order => "type asc, last_name asc"
								)
		respond_to do |format|
			format.html # borrowers.html.erb
			format.xml  { render :xml => @borrowers }
		end
	end

	
	def checkout_by_person
		@borrower = Person.find_by_id(params["id"],
											:include => [:library_checkouts])
		respond_to do |format|
			format.html # checkout_by_person.html.erb
			format.xml  { render :xml => @library_item }
		end
	end
end
