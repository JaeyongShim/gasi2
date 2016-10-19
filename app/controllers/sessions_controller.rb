class SessionsController < ApplicationController
  def new
  end
  
  def create
    user=User.find_by(email: get_login[:email].downcase)
    if user && user.authenticate(get_login[:password])
      log_in user
      redirect_to posts_url    
    else
      flash[:danger]='Invalid email/PW combination' 
      render 'new' 
    end
  end

  def destroy
    log_out
    redirect_to posts_url
  end
  
  def get_login
    params.require(:session).permit(:email, :password)
  end
end
