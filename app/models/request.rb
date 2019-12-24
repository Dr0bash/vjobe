class Request < ApplicationRecord
  belongs_to :employer, foreign_key: :employers_id
  belongs_to :job, foreign_key: :jobs_id
  belongs_to :condition, foreign_key: :conditions_id

  belongs_to :employee, foreign_key: :employees_id

  has_many :pictures, as: :owner
  has_many :requests_bids

  validates :description, :address, :min_salary, presence: true
end
