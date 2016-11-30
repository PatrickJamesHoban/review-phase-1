require_relative 'segment'

class RoadTrip
  # attr_reader :segments
  # road trip allows updates to name
  attr_accessor :name, :segments

  def initialize(args)
    @name = args[:name]
    @segments = args.fetch(:segments) { Array.new }
    # p segments
  end

  def add_segment(new_segment)
    # p new_segment.to_s
    # new_segment.to_a
    # new_segment.each do |i|
    #   puts i
    segment_collection = []
    segment_collection << new_segment
    segment_collection
  end

  # def segments_test
  #   puts segments
  # end

end

# trip = RoadTrip.new(name: 'Trip to SF', segments: segments)
# trip.segments_test


