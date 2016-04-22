class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def reseed
   require 'csv'
   
   Region.destroy_all
   Forest.destroy_all
   District.destroy_all
   
   region = File.read("#{Rails.root}/db/region.csv")
   forest = File.read("#{Rails.root}/db/forest.csv")
   district = File.read("#{Rails.root}/db/district.csv")
   
   csv = CSV.parse(region, :headers => true)
   csv.each do |row|
      puts params
      Region.create!(row.to_hash)
   end
   
   csv = CSV.parse(forest, :headers => true)
   csv.each do |row|
      Forest.create!(row.to_hash)
   end
   
   csv = CSV.parse(district, :headers => true)
   csv.each do |row|
      District.create!(row.to_hash)
   end
  end
end
