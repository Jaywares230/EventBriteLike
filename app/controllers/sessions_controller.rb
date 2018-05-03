class SessionsController < ApplicationController
  def new

  end
  def create 
  
  	user = User.find_by(name: params[:session][:name].downcase)
    if user
      # Log the user in and redirect to the user's show page.
      log_in(user)
      redirect_to user
    else
      # Create an error message.
      flash.now[:danger] = "Tu ne t'es pas inscrit ou tu n'as pas bien taper ton nom maggle"
      render 'new'
  	end 
  end 
end
