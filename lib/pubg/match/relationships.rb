module PUBG
	class Match
		class Relationships
			require "pubg/match/relationships/rosters"
			require "pubg/match/relationships/assets"
			
			attr_reader :rosters, :assets

			def initialize(args)
				@args = args
				@rosters = Array.new
				@assets = Array.new
				get_data
			end

			def get_data
				@args["rosters"]["data"].each do |roster|
					@rosters << Rosters.new(roster)
				end

				@args["assets"]["data"].each do |asset|
					@assets << Assets.new(asset)
				end
			end
		end
	end
end