class ApplicationController < ActionController::Base
    def after_sign_in_path_for(user)
        if current_user.has_role? :trader
            dashboard_path
        elsif current_user.has_role? :admin
            panel_path
        else
            new_user_registration_path
        end
    end

    def after_sign_out_path_for(user)
        root_path
    end
    
end
