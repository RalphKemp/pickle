class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :admin, :boolean, default: false, null: false
  end
end
