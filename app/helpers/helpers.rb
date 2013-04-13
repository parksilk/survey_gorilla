def login(user)
  session[:current_user_id] = user.id
end

# This will return the current user, if they exist
# Replace with code that works with your application
def current_user
  if session[:current_user_id]
    @current_user ||= User.find_by_id(session[:current_user_id])
  end
end

# Returns true if current_user exists, false otherwise
def logged_in?
  !current_user.nil?
end