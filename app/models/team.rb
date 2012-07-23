class Team < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :members

  attr_accessible :name, :member_ids

  validates :name, :project_id, presence: true
  validates :name, length: { maximum: 140 }, :uniqueness => { :scope => :project_id,
    :message => "should happen once in the same project" }

  
end
