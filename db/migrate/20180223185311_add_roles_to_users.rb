class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :customer, :boolean, default: true
    add_column :users, :worker, :boolean, default: false
  end
end
