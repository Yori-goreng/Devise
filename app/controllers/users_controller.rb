class UsersController < ApplicationController
    def show
        @user = User.find(current_user.id)
    end

    def after_sign_up_path_for
        root_path
    end
end
