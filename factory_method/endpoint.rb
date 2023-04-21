class EndPoint
        def home
            @user = UserFactory.call(params[:user_type])
            render_json(@user)
        end
end