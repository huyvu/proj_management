class Project < ActiveRecord::Base
  attr_accessible :description, :name, :status, :start_date, :due_date
end
