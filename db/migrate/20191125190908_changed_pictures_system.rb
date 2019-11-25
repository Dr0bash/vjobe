class ChangedPicturesSystem < ActiveRecord::Migration[6.0]
  def change
    drop_table :employee_pictures
    drop_table :employer_pictures
    drop_table :application_pictures
    create_table :pictures do |t|
      t.string :url
    end
  end
end
