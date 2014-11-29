class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :activity
      t.boolean :global_citizen
      t.boolean :global_talents
      t.boolean :future_leaders
      t.boolean :university
      t.boolean :career_days
      t.boolean :career_forum
      t.boolean :youth_to_business
      t.boolean :global_host

      t.timestamps
    end
  end
end
