require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class SmsService  # it's pronounced ssmervice

  # this is where it all starts!
  def initialize
    @success_numbers = []
    @error_numbers = []
  end

  # Take that job, schedule it and it'll send glorious courtesy reminders
  def send_messages(job)
    # contacts = Contact.all
    # contacts.each do |contact|
    scheduler = Rufus::Scheduler.new
    scheduler.at job.send_at.strftime('%Y/%m/%d %H:%M:%S') do
      account_sid = ENV['twillio_sid']  # I don't know who this Sid chap is...
      auth_token = ENV['twillio_token'] # the token of auth
      @client = Twilio::REST::Client.new account_sid, auth_token
      @client.account.messages.create({
        :from => ENV['twillio_number'],
        :to => "+15105906673",
        :body => "Courtesy Reminder: This Sunday, #{job.sunday_date.strftime('%m/%d')}, New Life Community Church is meeting at the #{job.hotel.name}, #{job.hotel.address}, Hope to see you there!",
      })
  # end
    end
  end

end # And they all lived happily ever after.  The End.