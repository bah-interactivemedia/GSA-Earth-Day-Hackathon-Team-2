class FacilitiesController < ApplicationController
	def index
		render json: Facility.all.select(:id, :building_name)
	end

	def show
	end
end
