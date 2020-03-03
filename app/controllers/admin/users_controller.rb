module Admin 
  class UsersController < ApplicationController

    
    def index
      @users = User.order(created_at: :asc)
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

    def update_moderator_status
      set_user

      if @user.update(user_params)
        flash[:success] = "#{@user.username}'s moderator status was updated"
      else
        flash[:error] = "You must have at least one moderator"
      end
      redirect_to admin_users_path

    end


    def destroy
      set_user

      if @user.is_admin? != true
        @user.destroy
        flash[:success] = "User successfully deleted"
      else
        flash[:error] = "You can't destroy an admin"
      end
      redirect_to admin_users_path
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:is_moderator)
    end




  end
end