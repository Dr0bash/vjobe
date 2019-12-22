class RequestsBid < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :request, optional: true
end
