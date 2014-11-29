class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.date :date
      t.text :place
      t.text :description
      t.integer :program
      t.float :modifier

      t.timestamps
    end
  end
end
