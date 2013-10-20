class SessionsController < ApplicationController
	def new
	end

	def create
		#render 'new'
		#p "email*****"+User.find_by_email(params[:email]).to_s
		@user = User.find_by_email(params[:session][:email])
		if(@user && @user.authenticate(params[:session][:email]))
			#flash.now[:success] = 'login success'		
			#render 'show'	
			flash.now[:error] = 'Invalid username/password combination'	
			render 'new'		
		else			
			#flash.now[:error] = 'Invalid username/password combination'	
			#render 'new'	
			flash.now[:success] = 'login success'		
			sign_in(@user)
			redirect_to current_user
		end
	end

	def show
		render 'show'		
	end

	def destroy
	end

	end
