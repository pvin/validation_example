class Details < ActiveRecord::Base
  attr_accessible  :firstName, :lastName, :gender, :address, :cell, :country
  validates_presence_of :firstName, :lastName, :gender, :address, :cell, :country

end

