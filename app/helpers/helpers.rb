helpers do
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

  def all_surveys
   @all_surveys = Survey.all 
  end

  def thumbify(survey)
    image = MiniMagick::Image.open(survey.image.current_path)
    image.resize "100x100"
    survey.thumbnail = image
  end

end
