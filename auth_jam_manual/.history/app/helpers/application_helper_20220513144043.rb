module ApplicationHelper
    def logged?
    session[:user_id].present?

    decurrent_userUser.find(session[:user_id])
    end
end
