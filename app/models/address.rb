class Address < ActiveRecord::Base
	validates :city, length:{maximum:50}, presence:true
	validates :street, length:{maximum:50}, presence:true
	validates :number, length:{maximum:10}, presence:true
	validates :zip_code, length:{maximum:6}, presence:true
	belongs_to :user
end
