class SessionsController < ApplicationController

  def new
  end


  def create
    @user = User.find_by(name: session_params[:name])

    if @user.nil?
      redirect_to '/sessions/new'
    else
      return head(:forbidden) unless @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to '/users/welcome'
    end
  end

  private
  def session_params
    params.require(:user).permit(:name, :password)
  end
end
