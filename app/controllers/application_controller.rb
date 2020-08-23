class ApplicationController < ActionController::API

private
def check_logged_in
  unless session[:user_id].present?
      render json: {
        status: 'you need to loggin'
      }
  end
end

end
