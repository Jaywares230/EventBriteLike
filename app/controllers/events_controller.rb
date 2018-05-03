class EventsController < ApplicationController


	def new 
		@event = Event.new 
	end 

	def create 

	event_params = params.require(:event).permit(:description, :place)

 	@event = Event.new(event_params)
    @event.creator_id = current_user.id
    if @event.save
      flash[:success] = "Event créé!"
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  
	end 

	def index 
		@event = Event.all
	end 

	def show 
	@event = Event.find(params[:id])

	end 
	def subscribe 
	@user 
	@eventsub = EventAttendee

end
