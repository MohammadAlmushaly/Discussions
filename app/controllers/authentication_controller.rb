class AuthenticationController < ApplicationController

	def login
		 if request.post?
			account = Account.find_by(:email=>params[:email], :password=>params[:password]) 
			if !account.nil?
				session[:account] = account.id
				redirect_to root_url, notice: "Thank you for loging in"
			else
				respond_to do |format|
				format.html { render :login}
				flash[:notice] = "Invalid username/password combination"
				format.json { render json: @account.errors, status: :unprocessable_entity }
			    end
		    end

		end
	end

	def logout
		session[:account]=nil
		redirect_to root_url, notice: "You loged out. See you soon"
	end

end