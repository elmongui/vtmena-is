class Professor < Person
	has_many :instructor
	#has_many :professors, :foreign_key => "vt_advisor_id", :class_name => "Professor"
	#has_many :professors, :foreign_key => "mena_advisor_id", :class_name => "Professor"
	has_many :advisorships
	has_many :students, :through => :advisorships
end