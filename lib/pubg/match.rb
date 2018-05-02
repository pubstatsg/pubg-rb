module PUBG
	class Match
		require "pubg/match/participants"
		require "pubg/match/telemetry"
		require "pubg/match/roster"

		def initialize(args)
			@args = args
		end

		def data
			@args["data"]
		end

		def included
			@args["included"]
		end

		def links
			@args["links"]
		end

		def meta
			@args["meta"]
		end

		def telemetry
			Telemetry.new(@args["included"].select {|data| data["type"] == "asset" }.first)
		end

		def participants
			items = []
			participants = @args["included"].select {|data| data["type"] == "participant" }
			participants.each do |participant|
				items << Participants.new(participant)
			end
			return items
		end

		def roster
			items = []
			rosters = @args["included"].select {|data| data["type"] == "roster" }
			rosters.each do |roster|
				items << Roster.new(roster)
			end
			return items
		end
	end
end