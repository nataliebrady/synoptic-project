class AddPermissionsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :edit, :boolean, default: false
    add_column :users, :view, :boolean, default: false
    add_column :users, :restricted, :boolean, default: false
  end
end
