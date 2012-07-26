class Project < ActiveRecord::Base

  has_many :teams
  has_many :tasks	
  attr_accessible :description, :due_date, :name, :start_date

  validates :name, presence: true, length: { maximum: 140 }
  validates :description, length: { maximum: 255 }
  validates :start_date, :due_date, presence: true
  validate :start_must_be_before_end_time


def start_must_be_before_end_time
	if start_date && due_date && due_date < start_date
		errors.add(:start_date, "must be before due date")
	end
end


end


