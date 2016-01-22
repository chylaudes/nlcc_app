class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :map_link
      t.string :img_link
      t.string :description

      t.timestamps null: false
    end
  end
end
