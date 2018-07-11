# frozen_string_literal: true

class DeviseCreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      ## Database authenticatable
      t.string :NCtrl, null:false, default: ""
      t.string :CURP, null:false, default: ""
      t.string :Nombre, null:false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :ApellidoP, null:false, default: ""
      t.string :ApellidoM, null:false, default: ""
      t.string :Especialidad, null:true, default: ""
      t.string :Grupo, null:true, default: ""
      t.string :Telefono, null:true, default: ""
      t.string :Colonia, null:true, default: ""
      t.string :Secundaria, null:true, default: ""
      t.integer :Edad, null:true, default: ""
      t.string :Email, null: false, default: ""
      t.text :FortalezasP, null:true, default: ""
      t.text :ExperienciaLaboral, null:true, default: ""
      t.text :EmpleoIdeal, null:true, default: ""
      t.boolean :Registrado, null:false, default: false
      t.boolean :Activo, null:false, default: false


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :students, :NCtrl,                unique: true
    add_index :students, :CURP,               unique:true
    add_index :students, :reset_password_token, unique: true
    # add_index :students, :confirmation_token,   unique: true
    # add_index :students, :unlock_token,         unique: true
  end
end
