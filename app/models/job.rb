class Job < ActiveRecord::Base
  belongs_to :user

  after_create :send_job

  def send_job
    sms_service = SmsService.new
    sms_service.send_messages(self)

  end


end
