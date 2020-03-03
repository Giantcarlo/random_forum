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
      puts "70" * 80

      puts params
      User.update_attribute(:is_moderator)
      


    end

    def update_moderator_status
      puts "60" * 80
      puts params
      @user = User.find_by_id(params[:id])
      if @user.update(user_params)
        redirect_to admin_users_path
      else

        puts "you can't delete the last moderator"
      end
      puts @user

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
      #params.require(:user).permit([:is_moderator])
      params.require(:user).permit(:is_moderator)

    end



  end
end