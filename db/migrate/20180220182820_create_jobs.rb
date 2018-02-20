class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :urgency
      t.string :category

      t.timestamps
    end
  end
end
