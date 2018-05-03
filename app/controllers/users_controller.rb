class UsersController < ApplicationController

	def new 
		@user = User.new 
	end 

	def create 

	user_params = params.require(:user).permit(:name)
	@user = User.create(user_params) 
	redirect_to users_path


	end 

	def index 
		@user = User.all
	end 

	def show 
	@user = User.find(params[:id])

	@event = Event.where(creator_id: params[:id])

	@event_attend = EventAttendee.where(attendee_id: params[:id])
	@event_name = Event.where(id: @event_attend)

	end 

	
end
