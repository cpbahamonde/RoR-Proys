module ApplicationHelper
    def logged?
    session[:user_id].present?

    current_userUser.find(session[:user_id])
    e
end
