class Book < ActiveRecord::Base
	validates :title, presence:true
	validates :author, presence:true
	validates :code, presence:true
	belongs_to :category
end
