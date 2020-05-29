class UsersController < ApplicationController
<<<<<<< HEAD
    
    def show
        @user = User.find(params[:id])
    end

=======
>>>>>>> 3e8a54b66af67b8936e1cb583a411e50a715ef8c
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          redirect_to :root
        else
          render action: :new
        end
      end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        if @user.update_attributes(user_params)
            redirect_to :root
        else
            render action: edit
        end
    end

    private
    def user_params
        params.require(:user).permit(:title).merge(user: current_user)
    end
end
