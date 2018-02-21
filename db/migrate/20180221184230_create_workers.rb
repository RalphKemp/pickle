class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :expertise
      t.text :bio
      t.string :location
      t.boolean :available

      t.timestamps
    end
  end
end
