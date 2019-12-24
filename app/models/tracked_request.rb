class TrackedRequest < ApplicationRecord
  belongs_to :employee, foreign_key: :employees_id
  belongs_to :request, foreign_key: :requests_id
end
