module Admin
  class ApplicationController < ::ApplicationController
    before_action :only_admin


    private

    def only_admin
      if user_signed_in? && current_user.is_admin? == false
				flash[:errors] = "You cannot access this page"	
				redirect_to root_path
			elsif user_signed_in? == false
				flash[:errors] = "You cannot access this page"
				redirect_to root_path
			end

    end

  end
end