class AddColumnsToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :name, :string
    add_column :workers, :bio, :text
    add_column :workers, :speciality, :string
    add_column :workers, :location, :string
  end
end
