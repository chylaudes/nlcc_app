class Job < ActiveRecord::Base
  belongs_to :user

  after_create :send_notification

  def send_notification
    AdminMailer.create_job(self, self.user).deliver_now
    #code
  end
end
