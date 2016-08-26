class UserController < ApplicationController
  def register
    if params.has_key?(:user_id) &&  !params[:user_id].strip.empty? && params.has_key?(:password) && !params[:password].strip.empty?

      full_name = params[:full_name]
      street_address = params[:street_address]
      city = params[:city]
      state = params[:state]
      postal_code = params[:postal_code]
      country = params[:country]
      email_address = params[:email_address]
      phone = params[:phone]
      user_id = params[:user_id]
      password = params[:password]

      @user = User.new(full_name, street_address, city, state, postal_code, country, email_address, phone, user_id, password)

      session[:user] = @user.to_yaml
      #redirect_to 'enter url here'
    # elsif
    #   @user = YAML.load(session[:user])
    #     if @user.user_id == params[:user_id]
    #       flash.now[:alert] = "User ID taken, try another"
    #       render 'welcome/index.html.erb'
    #     end
    else
      flash.now[:alert] = "ERROR: User ID and/or Password is not valid. Please enter a valid User ID and Password"
      render 'welcome/index.html.erb'
    end

  end #end register

  def login
    @user = YAML.load(session[:user])
    #if login is not valid
    if @user.user_id != params[:user_id] || @user.password != params[:password]
      flash.now[:alert] = "Log in failed, try again"
      render 'user/login.html.erb'
    else
      render 'welcome/index.html.erb'
    end
  end #end login
end #end user controller
