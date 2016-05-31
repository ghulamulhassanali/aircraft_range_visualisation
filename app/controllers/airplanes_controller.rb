class AirplanesController < ApplicationController
	
	def index
		@airplanes=Airplane.all
	end

	def new

	end

	def create
		@airplane = Airplane.new(airplane_params)
 		@airplane.save
  		redirect_to @airplane
	end

	def show
    	@airplane = Airplane.find(params[:id])
  	end

	private
  		def airplane_params
    		params.require(:airplane).permit(:name, :category, :passengers, :cabin_cubic_feet, :cargo_cubic_feet, :range, :speed)
  		end

end
