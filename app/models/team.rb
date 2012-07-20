class Team < ActiveRecord::Base
  belongs_to :project
  attr_accessible :name

  validates :name, :project_id, presence: true
  validates :name, length: { maximum: 140 }
end
