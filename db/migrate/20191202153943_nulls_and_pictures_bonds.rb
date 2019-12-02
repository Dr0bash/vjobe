class NullsAndPicturesBonds < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:applications, :description, false)
    change_column_null(:applications, :address, false)
    change_column_null(:applications, :min_salary, false)
    change_column_null(:employees, :first_name, false)
    change_column_null(:employees, :second_name, false)
    change_column_default(:employees, :description, "")
    change_column_null(:employees, :mail, false)
    change_column_null(:employees, :number, false)
    change_column_null(:employees, :password, false)
    change_column_null(:employees, :gender, false)
    change_column_default(:employees,:verified, false)
    change_column_null(:employees, :birth_date, false)
    change_column_default(:employees,:rating, 0)
    change_column_null(:employees, :country, false)
    change_column_null(:employees, :city, false)
    add_column :employers, :country, :string
    add_column :employers, :city, :string
    change_column_null(:employers, :name, false)
    change_column_null(:employers, :number, false)
    change_column_null(:employers, :password, false)
    change_column_null(:employers, :mail, false)
    change_column_null(:job_spheres, :sphere_title, false)
    change_column_null(:job_spheres, :sphere_title, false)
    change_column_default(:job_spheres, :description, "")
    change_column_null(:jobs, :job_title, false)
    add_column :pictures, :owner_id, :bigint
    add_column :pictures, :owner_type, :string
  end
end
