class AddRoleIdToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :role, :integer
    add_reference :users, :role, foreign_key: true
  end
end
