class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :image
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
