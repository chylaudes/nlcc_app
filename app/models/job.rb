class Job < ActiveRecord::Base
  belongs_to :user

  # after_create :send_notification


end
