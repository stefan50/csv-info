require 'csv'
class IntervalsController < ApplicationController
        protect_from_forgery except: :create      
        def create
                file = params[:file]
                file_path = file.path
                result = 0
		max = 0
		num = 0
                CSV.foreach(file_path) do |row|
		
				for i in num..(num+30)
                        		result += row[0].to_f
				end
				if num == 0
					max = result.to_f
				end
				else
					if max < result
						max = result.to_f
					end
				end
				num += 1
				
			
                end
                max = max.ceil
                render plain: "%.2f"%max
        end
end


