class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title, description, url = "comparethemeerkats.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "Establishing API connection..."
    puts "You might have time to complete a full blink of the eyes."
  end

  private

  def secret_method
    puts "A secret message from inside the parent class"
  end

  def testing_initialisers
    puts @title
    puts @description
    puts @url
  end
end

class SmsConnector < ApiConnector
  def send_sms
    `curl -X POST -d "notification[title]=#[@{title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{url}`
  end
end

class PhoneConnector < ApiConnector
  def api_logger
    super #run parent method and then run the current one. 
    puts "Phone connector booting"
  end
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

# sms = SmsConnector.new("A very good title", "an awesome description", "http://edutechional-smsy.herokuapp.com/notifications")
phone = PhoneConnector.new("A very good title", "an awesome description", "http://edutechional-smsy.herokuapp.com/notifications")
# email = MailConnector.new("A very good title", "an awesome description", "twitter.com")

# sms.send_sms
phone.api_logger
# email.send_email
#
# Polymporphism
#
#