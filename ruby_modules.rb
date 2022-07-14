#Self in Ruby is equivalent to this. in JavaScript. It specifies to use the function it's in, rather than to look further. 


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
  module FormBuilder
    class << self
    def call(params)
      subtotal = params[:subtotal]
      canton_name = params[:canton_name]

      tax_amount = subtotal * self.tax_rate(canton_name)
      subtotal + tax_amount
    end
    
    private

      def tax_rate(canton)
        if canton == "VD"
          0.070
        elsif canton == "ZH"
          0.078
        end
      end
    end
  end
end

form_data = {
  subtotal: 7.8,
  canton_name: "VD"
}

p Sale::FormBuilder.call(form_data) 

