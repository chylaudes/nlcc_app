class Hotel < ActiveRecord::Base
  has_many :jobs
  validates_presence_of :name, :address
end
