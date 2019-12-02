class Application < ApplicationRecord
  belongs_to :employer
  has_many :pictures, as: :owner
  validates :description, :address, :min_salary, presence: true
end