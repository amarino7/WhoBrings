class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
		render :new
	end

	def show
			event_id = params[:event_id]
		@event = event.find(event_id)
		respond_to do |format|
			format.html
			format.json { render json: @tasks }
		end
	end

	def create
		new_event = params.require(:event).permit(:title, :description, :start_date, :end_date, :start_time, :end_time)
		event = Event.create(new_event)
		respond_to do |format|
			format.html { redirect_to "/events#event.id" }
			format.json { render json: @event }
		end
	end

	def edit

	end

	def destroy

	end

end
