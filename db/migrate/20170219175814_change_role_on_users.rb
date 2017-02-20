class ChangeRoleOnUsers < ActiveRecord::Migration
  def change
    change_column :users, :role, :integer, default: 0
  end
end
