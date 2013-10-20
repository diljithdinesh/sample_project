class UsersController < ApplicationController
  
  def index
    @user = User.all
  end
  #create a new user
  def new
  	@user = User.new
  	#calls new.html.erb
  end

  #display user based on id
  def show
  	@user = User.find(params[:id])
    @item = Item.all
  	#calls show.html.erb
  end

  #adds user object into model
  #after hitting signup user object comes here
  def create
  	@user = User.create(params[:user])
  	#@user = User.new(user_params)
  	if @user.save
  		#show a success message when logs in
  		flash[:success] = "Welcome to Sample App!!!	"
  		#render "static_pages/home"
  		redirect_to @user
  		#form submitted succesfully
  	else
  		#some form fields are not valid
  		#redirect to the signup page
  		render 'new'
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
