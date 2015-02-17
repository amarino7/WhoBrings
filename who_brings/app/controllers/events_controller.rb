class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
		render :new
	end

	def show

	end

	def create

	end

	def edit

	end

	def destroy

	end

end
