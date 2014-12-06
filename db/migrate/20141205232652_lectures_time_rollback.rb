class LecturesTimeRollback < ActiveRecord::Migration
  def change
  	change_table :lectures do |t|
  		t.change :time, :time
  end
end
end
