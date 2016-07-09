class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
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
      t.string :first_name
      t.string :phone_number
      t.string :register_number
      t.string :joining_date
      t.string :course
      t.string :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :birth_place
      t.string :nationality
      t.string :mother_tongue
      t.string :category
      t.string :religion
      t.string :present_address
      t.string :permanent_address
      t.string :city
      t.string :pincode
      t.string :country
      t.string :state
      t.string :father_name
      t.string :father_job
      t.string :mother_name
      t.string :mother_job
      t.string :previous_institute_name
      t.string :previous_institute_address
      t.string :previous_institute_grade


      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      t.string :authentication_token
      t.timestamps null: false
    end
    add_index :users, :authentication_token, :unique => true
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
