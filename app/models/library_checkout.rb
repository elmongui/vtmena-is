class LibraryCheckout < ActiveRecord::Base
	belongs_to :person
	belongs_to :library_item
end
