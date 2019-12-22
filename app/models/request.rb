class Request < ApplicationRecord
  belongs_to :employer, optional: true
  has_many :pictures, as: :owner
  belongs_to :job
  has_many :requests_bids
  #belongs_to :employee
  validates :description, :address, :min_salary, presence: true
end
