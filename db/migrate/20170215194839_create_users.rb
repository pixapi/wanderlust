class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :e_mail
      t.string :password
      t.integer :role
      t.integer :score

      t.timestamps null:false
    end
  end
end
