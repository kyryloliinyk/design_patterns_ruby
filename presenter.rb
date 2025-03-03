# Переваги такого підходу:
# Відокремлює логіку представлення від моделі.
# Полегшує підтримку та тестування коду.
# Покращує реюзабельність коду.

class User < ApplicationRecord
    # :first_name, :last_name, :email
  end
  
  class UserPresenter
    def initialize(user)
      @user = user
    end
  
    def full_name
      "#{user.first_name} #{user.last_name}".titleize
    end
  
    def email_link
      "<a href='mailto:#{user.email}'>#{user.email}</a>".html_safe
    end
  
    private
  
    attr_reader :user
  end
  
class UserController < ApplicationController
    def show
        @user = UserPresenter.new(User.find(id))
      end
end