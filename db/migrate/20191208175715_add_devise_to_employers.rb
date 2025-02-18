# frozen_string_literal: true

class AddDeviseToEmployers < ActiveRecord::Migration[6.0]
  def self.up
    remove_column :employers, :mail
    remove_column :employers, :password
    remove_column :employers, :verified

    change_table :employers do |t|
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
      #t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      # Uncomment below if timestamps were not included in your original model.
       t.timestamps null: false
    end

    add_index :employers, :email,                unique: true
    add_index :employers, :reset_password_token, unique: true
    # add_index :employers, :confirmation_token,   unique: true
    # add_index :employers, :unlock_token,         unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    add_column :employers, :mail, :string
    add_column :employers, :password, :string
    add_column :employers, :verified, :boolean

    remove_column :employers, :email
    remove_column :employers, :encrypted_password
    remove_column :employers, :reset_password_token
    remove_column :employers, :reset_password_sent_at
    remove_column :employers, :remember_created_at
    remove_column :employers, :sign_in_count
    remove_column :employers, :current_sign_in_at
    remove_column :employers, :last_sign_in_at
    remove_column :employers, :current_sign_in_ip
    remove_column :employers, :last_sign_in_ip
    remove_column :employers, :confirmation_token
    remove_column :employers, :confirmed_at
    remove_column :employers, :confirmation_sent_at
    remove_column :employers, :created_at
    remove_column :employers, :updated_at

    remove_index :employers, :email
    remove_index :employers, :reset_password_token
    remove_index :employers, :confirmation_token
  end
end
