class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :users
      t.references :request

      t.timestamps
    end
  end
end
