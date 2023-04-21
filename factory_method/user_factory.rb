class UserFactory
    def self.call(user_type)
        case user_type
        when 'admin'
            Admin.new
        when 'customer'
            Customer.new
        else
            Guest.new
        end
    end
end