class Advisorship < ActiveRecord::Base
	belongs_to :student
	belongs_to :professor
end
