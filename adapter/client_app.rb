class ClientApp
    def initialize(platform_adapter: , user: )
        @platform = platform
        @user = user
    end

    def call
        platform_adapter.subscribe(user)
        platform_adapter.register(user)
    end
    private

    attr_reader :platform, :user
end
