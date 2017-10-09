require 'csv'
class SumsController < ApplicationController
	def index

	end
	def create
		file = params[:file]
		file_path = file.path
		result = 0
		CSV.foreach(file_path) do |row|
			result += row[0].to_f
		end
		render plain: result
	end
end
