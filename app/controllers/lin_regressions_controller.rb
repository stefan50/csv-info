require 'csv'
require 'regression.rb'
class LinRegressionsController < ApplicationController
	protect_from_forgery except: :create	
	def create
		file = params[:file]
		file_path = file.path
		result = 0
		sth = SimpleLinearRegression.new(2,3)
		CSV.foreach(file_path) do |row|		
		end
		result = result.ceil
		render plain: sth 
	end
end
