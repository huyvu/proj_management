class Member < ActiveRecord::Base
  attr_accessible :name
  has_many :tasks
  has_and_belongs_to_many :teams

  validates :name, presence: true, length: { maximum: 80 }
end
