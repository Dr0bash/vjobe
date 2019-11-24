class SecondTry < ActiveRecord::Migration[6.0]
  def change
    create_table :employer do |t|
      t.string :name
      t.string :number
      t.string :password
      t.string :mail
      t.boolean :verified, default: false
    end

    create_table :favourite_employees

    create_table :application do |t|
      t.text :description
      t.text :address
      t.float :min_salary
      t.float :rating
    end

    create_table :job_sphere do |t|
      t.string :sphere_title
      t.text :description
    end

    create_table :job do |t|
      t.string :job_title
    end

    create_table :pictures_of_application do |t|
      t.string :url
    end

    create_table :pictures_of_employer do |t|
      t.string :url
    end

    create_table :pictures_of_employee do |t|
      t.string :url
    end
  end
end
