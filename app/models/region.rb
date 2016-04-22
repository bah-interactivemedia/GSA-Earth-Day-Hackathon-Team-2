class Region < ActiveRecord::Base
  attr_accessor :cd
  attr_accessor :name
  
  private
   def user_params
     params.require(:region).permit(:cd, :name)
   end
end
