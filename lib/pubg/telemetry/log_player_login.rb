module PUBG
  class Telemetry
    class LogPlayerLogin
      attr_reader :data, :result, :errormessage, :accountid, :_V, :_D, :_T

      def initialize(args)
        @data = args
        @result = args["Result"]
        @errornessage = args["ErrorMessage"]
        @accountid = args["AccountId"]
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end