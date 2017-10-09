class IntervalsController < ApplicationController
	protect_from_forgery except: :create
        def create
                file = params[:file]
                file_path = file.path
		max = 0
		num = 0
		CSV.foreach(file_path) do |row|
			num_of_rows += 1
		end
		while (num+30)<=num_of_rows
			result = 0
                	CSV.foreach(file_path).with_index(1) do |row,which_row|
				if num+29 == which_row
					break
				end
				result += row[0].to_f
			end
			if num == 0
				max = result.to_f
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
