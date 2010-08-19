class Person < ActiveRecord::Base
	has_many :phones, :as => 'owner'
	has_one :us_residency
	has_many :achievements
	has_many :library_checkouts
	has_many :library_items, :through => :library_checkouts

    def to_label
		"#{title} #{first_name} #{last_name}"
	end
	
	def to_s
		to_label
	end
	
	def name
		"#{title} #{first_name} #{middle_names} #{last_name}"
	end
	
	def phones_list
		phones.collect{|ph| ph.number}.join(', ')
	end
	
	def self.title_options
		{:options=>[['Mr.','Mr.'], ['Ms.','Ms.'], ['Dr.','Dr.'], ['Eng.','Eng.']]}
	end

end

