class LecturesChangeTimeToHour < ActiveRecord::Migration
  def change
  	rename_column :lectures, :time, :hour
  	
  end
end
