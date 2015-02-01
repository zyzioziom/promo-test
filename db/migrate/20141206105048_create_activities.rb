class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :activity_type
      t.boolean :confirmed
      t.string :confirmation

      t.timestamps
    end
  end
end
