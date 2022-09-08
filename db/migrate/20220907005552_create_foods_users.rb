class CreateFoodsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :foods_users, :id => false do |t|
      t.integer :food_id
      t.integer :user_id
    end
  end
end
