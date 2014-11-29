class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.date :date
      t.time :time
      t.text :place
      t.string :name
      t.text :description
      t.integer :program
      t.float :points
      t.text :image

      t.timestamps
    end
  end
end
