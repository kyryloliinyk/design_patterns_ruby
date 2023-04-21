require 'some_paypal_imaginary library wit hown interface'

class PayPalPlatformAdapter
    def initialize(user)
        @user = user
    end

    def subscribe
        p 'use paypal lib with it/'s interface to subscribe user'
    end

    def register
        p 'use paypal lib with it/'s interface to register user'
    end
    private
    attr_reader :user
end