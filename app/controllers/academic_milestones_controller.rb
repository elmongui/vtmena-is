class AcademicMilestonesController < ApplicationController
  active_scaffold :academic_milestone do |config|
    config.columns = [:name, :status, :date]
    config.list.sorting = [{:date => :asc}]
  end
end
