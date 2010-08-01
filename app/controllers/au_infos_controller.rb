class AuInfosController < ApplicationController
  active_scaffold :au_info do |config|
    config.columns = [:department, :degree, :degree_program, :area, :semester_admitted, :year]
  end
end
