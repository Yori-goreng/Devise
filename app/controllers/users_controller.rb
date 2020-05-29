class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
    end

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
