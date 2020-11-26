module SessionsHelper

  def current_user
		if session[:userprof]
			@userp ||= User.find_by(id: session[:userprof]) 
		else
			nil
		end
  end
end
