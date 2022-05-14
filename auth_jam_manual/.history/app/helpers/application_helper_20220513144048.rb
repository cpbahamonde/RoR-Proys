module ApplicationHelper
    def logged?
    session[:user_id].present?

    def urrent_userUser.find(session[:user_id])
    end
end
