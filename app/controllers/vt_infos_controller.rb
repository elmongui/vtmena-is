class VtInfosController < ApplicationController
  active_scaffold :vt_info do |config|
    config.columns = [:student_pid, :student_id_number, :department, :degree, :degree_program, :area, :semester_admitted, :year]
  end
end
