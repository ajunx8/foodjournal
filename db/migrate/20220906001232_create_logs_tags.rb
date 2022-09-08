class CreateLogsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :logs_tags, :id => false do |t|
      t.integer :tag_id
      t.integer :log_id
    end
  end
end
