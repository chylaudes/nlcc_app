class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.datetime :sunday_date
      t.datetime :send_at
      t.string :author
      t.string :description

      t.timestamps null: false
    end
  end
end
