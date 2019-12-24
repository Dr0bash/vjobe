class RequestsBid < ApplicationRecord
  belongs_to :employee, optional: true, foreign_key: :employees_id
  belongs_to :request, optional: true, foreign_key: :requests_id
end
