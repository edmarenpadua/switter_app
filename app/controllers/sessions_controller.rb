class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to :root
		else
			flash.now[:error] = 'Invalid username/password combination'
			redirect_to :back
		end
	end

	def destroy
		sign_out
		redirect_to :root
	end
end
