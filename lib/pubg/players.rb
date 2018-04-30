module PUBG
	class Players

		def initialize(args)
			@data = args["data"]
			players      
		end

		def players
			players = Array.new

			@data.each do |player|
        players << PUBG::Player.new(player)
      end
      return players
		end
	end
end