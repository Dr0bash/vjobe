class TrackedApplication < ApplicationRecord
  belongs_to :employee
  has_many :applications
end