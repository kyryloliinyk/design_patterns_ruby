class ClientApp
    def initialize(platform: , user: )
        @platform = platform
        @user = user
    end

    def call
        platform.new.subscribe(user)
        platform.new.register(user)
    end
    private

    attr_reader :platform, :user
end