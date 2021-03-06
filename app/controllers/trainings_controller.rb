class TrainingsController < ApplicationController
	before_action :find_training, only: [:show, :edit, :update, :destroy]


	def index
		@trainings = Training.all.order("created_at DESC")
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
		if @training.update(training_params)
			redirect_to @training
		else
			render 'edit'
		end
	end

	def destroy
		@training.destroy
		redirect_to root_path
	end

	private

	def training_params
		params.require(:training).permit(:date, :workout, :length)
	end

	def find_training
		@training = Training.find(params[:id])
	end
end
