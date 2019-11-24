class Favourite_Employees < ApplicationRecord
  has_many :employees
  belongs_to :employers
end

