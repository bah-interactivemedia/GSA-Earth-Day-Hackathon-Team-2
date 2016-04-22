class MeasurementsController < ApplicationController
	def index
		metric = Metric.find(params[:metric_id])
		render json: metric.measurements.select(:id, :timestamp, :value)
	end
end
