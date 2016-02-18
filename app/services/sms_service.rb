require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
class SmsService

  def initialize
    @success_numbers = []
    @error_numbers =[]
  end

  def send_messages(job)
    # contacts = Contact.all
    # contacts.each do |contact|

      account_sid = ENV['twillio_sid']
      auth_token = ENV['twillio_token']
      @client = Twilio::REST::Client.new account_sid, auth_token
      @client.account.messages.create({
        :from => ENV['twillio_number'],
        :to => "+15105906673",
        :body => "Courtesy Reminder: This Sunday, #{job.sunday_date.strftime('%m/%d')}, New Life Community Church is meeting at the #{job.hotel.name}, #{job.hotel.address}, Hope to see you there!",
      })
  # end
  end
end