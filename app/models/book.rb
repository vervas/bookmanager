class Book < ActiveRecord::Base
	attr_accessible :isbn, :author, :title
	validates :title, :author, :isbn, :presence=> true
	validates :isbn, :uniqueness => true
	validates :isbn, :numericality => { :only_integer => true }
end
