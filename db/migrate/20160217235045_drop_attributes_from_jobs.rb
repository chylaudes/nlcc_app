class DropAttributesFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :title
    remove_column :jobs, :description
    remove_column :jobs, :author
  end
end
