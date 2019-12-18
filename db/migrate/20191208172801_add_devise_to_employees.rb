# frozen_string_literal: true

class AddDeviseToEmployees < ActiveRecord::Migration[6.0]
  def self.up
    remove_column :employees, :mail
    remove_column :employees, :password
    remove_column :employees, :verified

    change_table :employees do |t|
      ## Database authenticatable

      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      # Uncomment below if timestamps were not included in your original model.
      t.timestamps null: false
    end

    add_index :employees, :email,                unique: true
    add_index :employees, :reset_password_token, unique: true
    add_index :employees, :confirmation_token,   unique: true
    # add_index :employees, :unlock_token,         unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.

    add_column :employees, :mail, :string
    add_column :employees, :password, :string
    add_column :employees, :verified, :boolean

    remove_column :employees, :email
    remove_column :employees, :encrypted_password
    remove_column :employees, :reset_password_token
    remove_column :employees, :reset_password_sent_at
    remove_column :employees, :remember_created_at
    remove_column :employees, :sign_in_count
    remove_column :employees, :current_sign_in_at
    remove_column :employees, :last_sign_in_at
    remove_column :employees, :current_sign_in_ip
    remove_column :employees, :last_sign_in_ip
    remove_column :employees, :confirmation_token
    remove_column :employees, :confirmed_at
    remove_column :employees, :confirmation_sent_at
    remove_column :employees, :created_at
    remove_column :employees, :updated_at

    remove_index :employees, :email
    remove_index :employees, :reset_password_token
    remove_index :employees, :confirmation_token

  end
end
