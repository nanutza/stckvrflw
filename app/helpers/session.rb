def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  !!current_user
end

def require_login
  redirect :'/sessions/new' unless logged_in?
end

def owner?
  current_user == @question.user
end
