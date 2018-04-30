class PUBError < StandardError
  def initialize(msg="Opps something happened")
    super(msg)
  end
end
