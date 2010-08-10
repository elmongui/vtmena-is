class LibraryItem < ActiveRecord::Base
	has_many :library_checkouts
	has_many :people, :through => :library_checkouts
end
