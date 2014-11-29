class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.float :points
      t.string :name
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
