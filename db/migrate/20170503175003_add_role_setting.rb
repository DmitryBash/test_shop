class AddRoleSetting < ActiveRecord::Migration[5.0]
  def up
    add_column :role_settings, :name, :string
    add_index :role_settings, :name
    RoleSetting.create(name: 'create_product', description: 'Create product')
    RoleSetting.create(name: 'rm_product', description: 'RM products')
    RoleSetting.create(name: 'show_product', description: 'Show products')
    RoleSetting.create(name: 'search_product', description: 'Search products')
    RoleSetting.create(name: 'send_broadcast', description: 'Create broadcast')
  end

  def down
    remove_column :role_settings, :name, :string
    RoleSetting.destroy_all
  end
end
