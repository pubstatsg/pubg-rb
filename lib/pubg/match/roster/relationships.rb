module PUBG
  class Match
    class Roster
      class Relationships
        attr_reader :team, :participants

        def initialize(args)
          @args = args
          @team = args["team"]["data"]
          @participants = Array.new
          get_participants
        end

        def get_participants
          @args["participants"]["data"].each do |participant|
            @participants << Participants.new(participant)
          end
        end

        # -----------------
        class Participants
          attr_reader :type, :id

          def initialize(args)
            @type = args["type"]
            @id = args["id"]
          end
        end
      end
    end
  end
end