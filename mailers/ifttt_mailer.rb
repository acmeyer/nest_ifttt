class IftttMailer < ActionMailer::Base
  default to: ENV['IFTTT_EMAIL']
  default from: ENV['USER_EMAIL']

  def command(action="off")
    if action == "on"
      mail(subject: "#nest-on", body: "Turn on a/c")
    else
      mail(subject: "#nest-off", body: "Turn off a/c")
    end
  end
end
