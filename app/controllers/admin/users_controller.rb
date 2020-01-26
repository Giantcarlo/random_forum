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

    end

    def destroy
      @user = User.find(params[:id])

      if @user.is_admin? != true
        @user.destroy
        flash[:success] = "User successfully deleted"
      else
        flash[:error] = "You can't destroy a admin user"
      end
      redirect_to admin_users_path
    end




  end
end