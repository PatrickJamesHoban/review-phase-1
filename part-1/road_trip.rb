require_relative 'segment'

class RoadTrip
  # attr_reader :segments
  # road trip allows updates to name
  attr_accessor :name, :segments

  def initialize(args)
    @name = args[:name]
    @segments = args[:segments]
  end

  def add_segment(new_segment)
    new_segment.to_s
    new_segment.each do |segment|
      puts segment
      @segments << segment
    end
    segments
  end

end
