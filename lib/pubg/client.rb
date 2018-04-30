module PUBG
	require "typhoeus"
  require "oj"

  class Client
  	def initialize(api_key=nil)
      @api_key = api_key[:api_key] || ENV["PUBG_API_KEY"]
    end

    def players
      
    end

    def status
      path = "/status"
      PUBG::Status.new(request(path))
    end
  	
  	def request(path)
  		request = Typhoeus.get(
			  [$base_url, path].join(""),
			  # params: { field1: "a field" },
			  headers: { Accept: "application/vnd.api+json" }
			)
      case request.code
      when 200
        response = Oj.load(request.body)
      end
      
      return response
  	end
  end
end
