string = "The 12 galivanting geese jumped over the 6 laughing monkeys"

p string =~ /o/
p string =~ /monkey/
p string =~/z/ ? "valid" : "invalid"

p string =~/T/ ? "valid" : "invalid"

p string.to_enum(:scan, /\d+/).map { Regexp.last_match }

VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
	email =~VALID_EMAIL_REGEX
end

p is_valid_email?("duck@example.com") ? "valid" : "invalid"
p is_valid_email?("duck_example.com") ? "valid" : "invalid"
p is_valid_email?("duck@example") ? "valid" : "invalid"
p is_valid_email?("duck.1212@example.com" )? "valid" : "invalid"

IP_ADDRESS_REGEX = /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/

def is_valid_ip_address? ip
	ip =~IP_ADDRESS_REGEX
end
puts "IP checks"

p is_valid_ip_address?("1954.123.12.erd") ? "Valid" : "invalid"
p is_valid_ip_address?("1.1.1.1") ? "Valid" : "invalid"
p is_valid_ip_address?("192.168.1.1") ? "Valid" : "invalid"
p is_valid_ip_address?("127.0.0.1") ? "Valid" : "invalid"



