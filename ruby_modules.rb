# class Sale
#   def initialize(params)
#     @params = params
#   end
#
#   def call
#     puts "Params in class: #{@params}"
#   end
# end
#
# sale = Sale.new("Class params")
# sale.call

module Sale
  def self.call(params)
    puts "Params in class: #{params}"
  end
end

Sale.call("Some data") 




















