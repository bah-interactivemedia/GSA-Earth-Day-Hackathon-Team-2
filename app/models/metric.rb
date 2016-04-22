class Metric < ActiveRecord::Base
  belongs_to :facility

  has_many :measurements
end
