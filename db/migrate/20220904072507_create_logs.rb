class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.date :date
      t.text :description
      t.integer :food_id

      t.timestamps
    end
  end
end
