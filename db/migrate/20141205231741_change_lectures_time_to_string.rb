class ChangeLecturesTimeToString < ActiveRecord::Migration
  def change
  	change_table :lectures do |t|
  		t.change :time, :string
  	end
  end
end
