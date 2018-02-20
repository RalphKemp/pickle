class AddPhotosToModel < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :photos, :string
  end
end
