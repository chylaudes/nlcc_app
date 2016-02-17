class AddHotelIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :hotel_id, :integer
  end
end
