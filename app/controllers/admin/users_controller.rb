module Admin 
  class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end 

    def update
      user_params

      puts "70" * 80

    end

    def update_moderator_status
      puts "60" * 80

    end


    def destroy
      @user = User.find(params[:id])

      if @user.is_admin? != true
        @user.destroy
        flash[:success] = "User successfully deleted"
      else
        flash[:error] = "You can't destroy an admin"
      end
      redirect_to admin_users_path
    end

    private

    def user_params
      params.require(:user).permit(:_status)
    end




  end
end