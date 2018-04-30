module PUBG
	class Match
		require "pubg/match/attributes"
		require "pubg/match/relationships"
		require "pubg/match/participants"
		require "pubg/match/roster"
		require "pubg/match/telemetry"

		attr_reader :type, :id, :attributes, :relationships, :link, :participants, :roster, :telemetry

		def initialize(args)
			@type = args["data"]["type"]
			@id = args["data"]["id"]
			@attributes = Attributes.new(args["data"]["attributes"])
			@link = args["links"]["self"]
			@participants = Array.new
			@roster = Array.new
			@relationships = Relationships.new(args["data"]["relationships"])
			@included = args["included"]
			included_apart
			# right now we only get one asset so get the first
			@telemetry = Telemetry.new(@included.select {|data| data["type"] == "asset" }.first)		
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