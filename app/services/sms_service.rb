require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
class SmsService

  def initialize
    @success_numbers = []
    @error_numbers =[]
  end

  def send_messages(job)
    account_sid = ENV['twillio_sid']
    auth_token = ENV['twillio_token']
    @job = job
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create({
      :from => ENV['twillio_number'],
      :to => '+15105906673',
      :body => "Courtesy Reminder: This Sunday, #{@job.sunday_date}, New Life Community Church is meeting at the #{@job.title}",

    })
      binding.pry
  end

end