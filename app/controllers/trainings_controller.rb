class TrainingsController < ApplicationController
	before_action :find_training, only: [:show, :edit, :update, :destroy]
	def index
	end

	def show
	end

	def new
		@training = Training.new
	end

	def create
		@training = Training.new(training_params)
		if @training.save
			redirect_to @training
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def training_params
		params.require(:training).permit(:date, :workout, :length)
	end

	def find_training
		@training = Training.find(params[:id])
	end
end
