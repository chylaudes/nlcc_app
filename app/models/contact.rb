class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :mms_email
  belongs_to :user
end
