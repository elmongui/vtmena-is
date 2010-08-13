class AcademicCredentialsController < ApplicationController
	active_scaffold :academic_credential do |config|
		config.columns = [:b_sc_university, :b_sc_area, :b_sc_year, :b_sc_gpa, :m_sc_university, :m_sc_area, :m_sc_year, :m_sc_gpa, :gre_v, :gre_q, :gre_a, :toefl]
	end
end


