class TrackedRequest < ApplicationRecord
  belongs_to :employee
  has_many :requests
end
