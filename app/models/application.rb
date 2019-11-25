class Application < ApplicationRecord
  belongs_to :employer
  has_one :employee
  has_many :pictures
  has_one :job
end

