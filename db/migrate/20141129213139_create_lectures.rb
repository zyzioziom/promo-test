class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :day
      t.time :time
      t.text :place
      t.text :description
      t.integer :program
      t.float :modifier

      t.timestamps
    end
  end
end
