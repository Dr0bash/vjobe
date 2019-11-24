class FirstTryToCreateDataBase < ActiveRecord::Migration[6.0]
  def change
    create_table :employee do |t|
      t.string :first_name
      t.string :second_name
      t.string :patronymic, :null => true
      t.string :full_name
      t.text   :description, :null => true
      t.string :mail
      t.string :number
      t.string :password
      t.boolean :gender
      t.boolean :verified
      t.date :birth_date
      t.float :rating
      t.string :country
      t.string :city
      t.integer :pref_min_sal
    end
  end
end
