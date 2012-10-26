class SessionsController < ApplicationController
	def new
	end

	def create
	  user = User.find_by_name(params[:session][:name])
	  if user && user.authenticate(params[:session][:password])
	    session[:user_id] = user.id
	    redirect_to user_path(user), :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end
end
