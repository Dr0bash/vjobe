class Picture < ApplicationRecord
  belongs_to :employee
  belongs_to :employer
  belongs_to :application
end
