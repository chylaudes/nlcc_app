#this is where you just send emails to the adminMailer
class AdminMailer < ApplicationMailer

#each method responds to what had happen inside of the app. When a new job has been created
#send a email to admin  with a subject of "New Job Created"

def mandrill_client
  @mandrill_client ||= Mandrill::API.new ENV["mandrill_api"]
end
  def create_job(job, current_user)
    @job = job
    @user = current_user
    mail(subject: "New Job created #{job.id} by #{job.user.email}")
  end
end
