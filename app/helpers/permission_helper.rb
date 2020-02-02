module PermissionHelper



  def is_admin?
    # Check that the user is signed in and is admin
    user_signed_in? && current_user.is_admin === true
  end


  def is_moderator?
    # Check that the user is signed in and is moderator
    user_signed_in? && current_user.is_moderator === true
  end



end