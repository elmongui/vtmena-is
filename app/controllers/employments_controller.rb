class EmploymentsController < ApplicationController
  active_scaffold :employment do |config|
    config.columns = [:present_employer, :position, :government, :mission]
  end
end
