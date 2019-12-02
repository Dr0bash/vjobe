class TypeOfSalary < ActiveRecord::Migration[6.0]
  def change
    change_column(:employees, :pref_min_sal, :float, precision: 2)
    change_column(:applications, :min_salary, :float, precision: 2)
  end
end
