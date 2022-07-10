def lake_name_list
  puts %w[Bourget Leman Lucerne Mead]
end

#return is not needed in ruby. Seen as more elegant not to use return
def second_lake_name_list
  x = 5 # if the value is not 10 it will not return anything
  return ["Bourget", "Leman", "Lucerne", "Mead"]  if x == 10
end

lake_name_list

p second_lake_name_list

def void_method
  puts "Hey there without return"
end

p void_method

def method_with_return
  return "Hey there with return"
end

p method_with_return

x = void_method

p x # will return nil

y = method_with_return

p y

# return is useful for debugging purposes
# Difference between class and instance method

class Invoice
  # class method
  def self.print_out
    "print out invoice"
  end

  # instance method
  def convert_to_pdf
    "Converted to pdf"
  end
end

p Invoice.print_out

# p Invoice.convert_to_pdf # throws an error: undefined method `convert_to_pdf' for Invoice:Class (NoMethodError)

# Create a new instance of the class to call it.
i = Invoice.new
p i.convert_to_pdf

full_name = Proc.new { | first, last | first + " " + last }
p full_name["Richard", "A"]

full_name = Proc.new { | first, last | first + " " +last }
p full_name["Duck", "Tales"]

full_name = Proc.new do |first|
  first * 5
end

p full_name["Couac "]

# Lambda

first_name = lambda { | first, last | first + " " + last }
p first_name["The", "Lambda"]

# Short hand version, for databases
another_name = ->(first, last) {first + " " + last }
p another_name["The", "Stabby"]
p another_name.call("Stabby", "called")

# Method Arguments
# Name and default arugments
#

def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("Duck", "Hunt")

#Named arguments

# def print_address city:, state:, zip:
#   puts city
#   puts state
#   puts zip
# end
#
# print_address city: "Lausanne", state: "Vaud", zip: 1200

#if we make them named arguments by adding : we make them named arguments and order doesn't matter.
def dm_generator api_key, num, msg, locale
  # generic dm message goes here
end

dm_generator '98776565-afde-rt-ew-as', 0677562312, "The Quick brown fox jumped over the lazy bat", 'CH'

def movie_choice title:, lang: "FRA"
  puts title
  puts lang
end

movie_choice title: "Le Jour Le Plus Long"

movie_choice title: "The Longest Day", lang: "ENG"

# def customer_assignments customer_1, customer_2, customer_3
#  "Assigning customers: #{customer_1}, #{customer_2}, #{customer_3}"
#end

#p customer_assignments("Apple", "Google", "LinkedIn")

def customer_assignments *customers
#  "Assigning customers: #{customer}"
  customers.each do |customer|
    puts customer.upcase
  end
end

p customer_assignments("Apple", "Google", "LinkedIn")
# this does return the array

def registration(email:, password:)
  puts "Building account for: #{email}"
end

registration(
  email: "richard@example.com",
  password: "diligiaf2022"
) #


def lake_name_list
  puts %w[Bourget Leman Lucerne Mead]
end

#return is not needed in ruby. Seen as more elegant not to use return
def second_lake_name_list
  x = 5 # if the value is not 10 it will not return anything
  return ["Bourget", "Leman", "Lucerne", "Mead"]  if x == 10
end

lake_name_list

p second_lake_name_list

def void_method
  puts "Hey there without return"
end

p void_method

def method_with_return
  return "Hey there with return"
end

p method_with_return

x = void_method

p x # will return nil

y = method_with_return

p y

# return is useful for debugging purposes
# Difference between class and instance method

class Invoice
  # class method
  def self.print_out
    "print out invoice"
  end

  # instance method
  def convert_to_pdf
    "Converted to pdf"
  end
end

p Invoice.print_out

# p Invoice.convert_to_pdf # throws an error: undefined method `convert_to_pdf' for Invoice:Class (NoMethodError)

# Create a new instance of the class to call it.
i = Invoice.new
p i.convert_to_pdf

full_name = Proc.new { | first, last | first + " " + last }
p full_name["Richard", "A"]

full_name = Proc.new { | first, last | first + " " +last }
p full_name["Duck", "Tales"]

full_name = Proc.new do |first|
  first * 5
end

p full_name["Couac "]

# Lambda

first_name = lambda { | first, last | first + " " + last }
p first_name["The", "Lambda"]

# Short hand version, for databases
another_name = ->(first, last) {first + " " + last }
p another_name["The", "Stabby"]
p another_name.call("Stabby", "called")

# Method Arguments
# Name and default arugments
#

def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("Duck", "Hunt")

#Named arguments

# def print_address city:, state:, zip:
#   puts city
#   puts state
#   puts zip
# end
#
# print_address city: "Lausanne", state: "Vaud", zip: 1200

#if we make them named arguments by adding : we make them named arguments and order doesn't matter.
def dm_generator api_key, num, msg, locale
  # generic dm message goes here
end

dm_generator '98776565-afde-rt-ew-as', 0677562312, "The Quick brown fox jumped over the lazy bat", 'CH'

def movie_choice title:, lang: "FRA"
  puts title
  puts lang
end

movie_choice title: "Le Jour Le Plus Long"

movie_choice title: "The Longest Day", lang: "ENG"

# def customer_assignments customer_1, customer_2, customer_3
#  "Assigning customers: #{customer_1}, #{customer_2}, #{customer_3}"
#end

#p customer_assignments("Apple", "Google", "LinkedIn")

def customer_assignments *customers
#  "Assigning customers: #{customer}"
  customers.each do |customer|
    puts customer.upcase
  end
end

p customer_assignments("Apple", "Google", "LinkedIn")
# this does return the array
# kwargs = keyword arguments
def registration(email:, password:, **kwargs)
  puts "building account for: #{email}"

  if kwargs[:role]
    puts "With role #{kwargs[:role]}"
  end

  if kwargs[:plan]
    puts "With plan: #{kwargs[:plan]}"
  end
end

registration(
  email: "richard@example.com",
  password: "diligiaf2022",
  role: "admin",
  plan "The Super Awesome plan"
) #


