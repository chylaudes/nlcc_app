class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :phone_number
  belongs_to :user

  before_save :format_number

  def format_number
    phone_number.strip!
    phone_number.gsub!(/[^0-9]/, "")
    phone_number.prepend("+1")
  end


end
