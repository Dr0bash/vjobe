class FavouriteEmployee < ApplicationRecord
  belongs_to :employer, foreign_key: employers_id
  belongs_to :employee, foreign_key: employees_id
end

