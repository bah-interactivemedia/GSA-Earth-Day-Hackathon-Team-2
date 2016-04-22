class FacilitiesController < ApplicationController
	def index
		render json: Facility.all.select(:id, :building_name)
	end

	def show
	end
	
	def get_climate_zone_by_zip
		render json: ZipCodeClimateZone.where(zip: params[:zip]).select(:climate_zone, :moisture_regime)
	end
end
