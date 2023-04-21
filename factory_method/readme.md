# Factory Method
Суть паттерна полягає в тому щоб інкапсулювати логіку в об'єкт тим самим дотримуватись Dпринципу RY.
В цьому прикладі в різних місцях коду використовується визначення типу коричтувача і ми помістили його в окрему фабрику, яка цим займається.

```ruby
class EndPoint
        def home
            @user = UserFactory.call(params[:user_type])
            render_json(@user)
        end
end

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
```