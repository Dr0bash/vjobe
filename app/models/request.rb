class Request < ApplicationRecord
  belongs_to :employer, optional: true
  belongs_to :job
  belongs_to :condition

  belongs_to :employee

  has_many :pictures, as: :owner
  has_many :requests_bids

  validates :description, :address, :min_salary, presence: true
end
