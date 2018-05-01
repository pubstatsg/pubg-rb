module PUBG
	class Match
		require "pubg/match/participants"
		require "pubg/match/telemetry"
		require "pubg/match/roster"

		attr_reader :data, :included, :links, :meta, :telemetry, :participants, :roster

		def initialize(args)
			@data = args["data"]
			@included = args["included"]
			@links = args["links"]
			@meta = args["meta"]
			@participants = []
			@roster = []
			@telemetry = Telemetry.new(@included.select {|data| data["type"] == "asset" }.first)
			included_apart
		end

		def included_apart
			participants = @included.select {|data| data["type"] == "participant" }
			participants.each do |participant|
				@participants << Participants.new(participant)
			end

			rosters = @included.select {|data| data["type"] == "roster" }
			rosters.each do |roster|
				@roster << Roster.new(roster)
			end
		end
	end
end