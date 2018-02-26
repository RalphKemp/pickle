class AddAcceptedToRequests < ActiveRecord::Migration[5.1]
   def change
    add_column :requests, :accepted, :boolean, default: false
  end
end
