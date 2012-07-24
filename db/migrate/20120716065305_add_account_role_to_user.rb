class AddAccountRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :account_role, :string
  end
end
