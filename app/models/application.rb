class Application < ApplicationRecord
  #belongs_to :tracked_application
  belongs_to :employer
  has_many :pictures, as: :owner
  validates :description, :address, :min_salary, presence: true
end