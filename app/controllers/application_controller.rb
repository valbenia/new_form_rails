class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    helper_method :current_user_name
    def current_user    
        User.find_by(id: session[:user_id])  
    end
    def current_user_name
        user = current_user
        case user.typed
        when "parttime"
            Partprofile.find_by(username: user.username).name
        when "fulltime"
            Fullprofile.find_by(username: user.username).name
        end
    end
    def logged_in?
       
        !current_user.nil?
    end
    def authorized
        redirect_to '/welcome' unless logged_in?
    end
end
