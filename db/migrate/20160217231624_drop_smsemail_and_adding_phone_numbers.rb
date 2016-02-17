class DropSmsemailAndAddingPhoneNumbers < ActiveRecord::Migration
  def change
    remove_column :contacts, :mms_email
    add_column :contacts, :phone_number, :string
  end
end
