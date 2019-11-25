class FavouriteEmployee < ApplicationRecord
  has_many :employees
  belongs_to :employer
end

