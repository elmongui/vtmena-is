class Professor < Person
	has_many :instructor
	has_many :advisorships
	has_many :students, :through => :advisorships
end