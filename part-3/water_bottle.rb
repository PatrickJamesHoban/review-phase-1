require_relative 'rent'
require_relative 'reserve'

class WaterBottle
  include Rent
  include Reserve

  attr_reader :capacity, :material

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
  end

end
