# require_relative 'road_trip'

class Segment

  attr_reader :origin, :destination, :miles

  def initialize(args = {})
    @origin = args[:origin]
    @destination = args[:destination]
    @miles = args[:miles]
  end


end


##Driver Code

# segment_test = Segment.new(miles: 500), Segment.new(miles: 750)
# p segment_test

