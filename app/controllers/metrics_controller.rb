class MetricsController < ApplicationController
	def categories
		render json: Metric.select(:category).uniq.map(&:category)
	end

	def by_category
		render json: Metric.where(category: params[:category])
	end
end
