class Application < ApplicationRecord
  belongs_to :employer
  has_one :employee
  has_many :application_pictures
  has_one :job
end

