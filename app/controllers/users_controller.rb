class UsersController < ApplicationController
  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_registration_path, success: "Your profile has been updated"
    else
      redirect_to edit_user_registration_path, danger: "Unable to update profile"
      # Have to use redirect_to because render only works if the view is associated with this controller.
    end

  end

  private

  def user_params
    params[:user].permit(:username)
  end
end
