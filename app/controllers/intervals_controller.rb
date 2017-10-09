class IntervalsController < ApplicationController
	protect_from_forgery except: :create
        def create
                file = params[:file]
                file_path = file.path
                result = 0
		max = 0
		num = 0
		for i in num..(num+30)
                	CSV.foreach(file_path) do |row|
					result += row[0].to_f
					if num == 0
						max = result
					else
						if max < result
							max = result
						end
					end
			end
                end
                max = max.ceil
                render plain: "%.2f"%max
        end

end
