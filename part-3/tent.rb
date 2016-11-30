require_relative 'rent'
require_relative 'reserve'

class Tent
  include Rent
  include Reserve

  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end

end
