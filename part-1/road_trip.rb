require_relative 'segment'

class RoadTrip
  # attr_reader :segments
  # road trip allows updates to name
  attr_accessor :name, :segments

  def initialize(args)
    @name = args[:name]
    @segments = args[:segments]
    p segments
  end

  def add_segment(new_segment)
    new_segment.to_a
    new_segment.each do |segment|
      puts segment
      @segments << segment
    end
    segments
  end

  def segments_test
    puts segments
  end

end

# trip = RoadTrip.new(name: 'Trip to SF', segments: segments)
# trip.segments_test


