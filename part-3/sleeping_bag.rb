require_relative 'rent'
require_relative 'reserve'

class SleepingBag
  include Rent
  include Reserve

  attr_reader :style, :size, :shell

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
  end

  # Pulled out all common methods across sleeping_bag, tent, and water_bottle and stored in modules instead.

end
