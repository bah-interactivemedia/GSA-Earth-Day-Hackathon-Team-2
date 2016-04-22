class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def reseed
   require 'csv'
   
   OrgCode.destroy_all
   #Forest.destroy_all
   #District.destroy_all
   ZipCodeClimateZone.destroy_all
   
   org_code = File.read("#{Rails.root}/db/org_codes.csv")
   #forest = File.read("#{Rails.root}/db/forest.csv")
   #district = File.read("#{Rails.root}/db/district.csv")
   zip_code_climate = File.read("#{Rails.root}/db/zip_code_climate_zone_reference.csv")
   
   csv = CSV.parse(org_code, :headers => true)
   csv.each do |row|
      puts params
      OrgCode.create!(row.to_hash)
   end
   
   #csv = CSV.parse(forest, :headers => true)
   #csv.each do |row|
  #    Forest.create!(row.to_hash)
  # end
   
   #csv = CSV.parse(district, :headers => true)
   #csv.each do |row|
  #    District.create!(row.to_hash)
  # end
   
   csv = CSV.parse(zip_code_climate, :headers => true)
   csv.each do |row|
      ZipCodeClimateZone.create!(row.to_hash)
   end
  end
end
