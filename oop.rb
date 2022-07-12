class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title, description, url = "comparethemeerkats.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_initialisers
    puts @title
    puts @description
    puts @url
  end
end

class SmsConnector < ApiConnector
  def send_sms
    puts "SMS being sent..."
  end
end

class PhoneConnector < ApiConnector
  def send_phone_call
    puts "Connecting phone call..."
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "sending e-mail..."
  end
end

# api = ApiConnector.new("A very good title", "an awesome description", "twitter.com"),
# api.testing_initialisers

sms = SmsConnector.new("A very good title", "an awesome description", "twitter.com")
phone = PhoneConnector.new("A very good title", "an awesome description", "twitter.com")
email = MailConnector.new("A very good title", "an awesome description", "twitter.com")

  sms.send_sms
phone.send_phone_call
email.send_email