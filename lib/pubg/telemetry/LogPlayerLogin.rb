module PUBG
  class Telemetry
    class LogPlayerLogin
      attr_reader :Result, :ErrorMessage, :AccountId, :_V, :_D, :_T

      def initialize(args)
        @Result = args["Result"]
        @ErrorMessage = args["ErrorMessage"]
        @AccountId = args["AccountId"]
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end