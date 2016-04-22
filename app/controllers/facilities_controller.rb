class FacilitiesController < ApplicationController
	def index
		render json: Facility.all.select(:id, :building_name)
	end

	def show
	end
	
	def get_climate_zone_by_zip
		render json: ZipCodeClimateZone.where(zip: params[:zip]).select(:climate_zone, :moisture_regime)
	end
	
	def get_energy_use_by_state
		@covered_facilities = CoveredFacility.all
		respond_to do |format|
			format.json { render file: "energy_use_by_state.json.erb", content_type: 'application/json' }
		end
	end
end
