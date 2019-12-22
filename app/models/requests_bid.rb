class RequestsBid < ApplicationRecord
  belongs_to :employee
  belongs_to :request
end
